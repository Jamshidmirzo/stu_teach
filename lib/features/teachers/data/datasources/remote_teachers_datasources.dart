// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:stu_teach/features/auth/data/model/user_model.dart';
import 'package:stu_teach/features/teachers/data/model/task_for_teacher_model.dart';

class RemoteTeachersDatasources {
  Dio dio;
  final FirebaseStorage firebaseStorage;
  RemoteTeachersDatasources({
    required this.dio,
    required this.firebaseStorage,
  });

  Future<List<UserModel>> getStudents() async {
    try {
      final response = await dio
          .get('https://stuteach-f083d-default-rtdb.firebaseio.com/users.json');

      if (response.statusCode == 200 && response.data != null) {
        final Map<String, dynamic> usersData = response.data;
        final students = usersData.entries
            .where((entry) => entry.value['role'] == 'Student')
            .map((entry) => UserModel.fromJson(entry.value))
            .toList();

        return students;
      } else {
        print('Failed to fetch users. Status code: ${response.statusCode}');
        return [];
      }
    } catch (e) {
      print('Error fetching students: $e');
      return [];
    }
  }

  Future<String?> uploadFile(String taskId, File file) async {
    try {
      final ref = firebaseStorage
          .ref()
          .child('tasks/$taskId/${file.path.split('/').last}');
      final uploadTask = await ref.putFile(file);
      return await uploadTask.ref.getDownloadURL();
    } catch (e) {
      print('Error uploading file: $e');
      return null;
    }
  }

 Future<void> addTask(TaskForTeacherModel task, List<File> files) async {
  try {
    List<String> fileUrls = []; // List to store file URLs

    // Upload files and get their URLs
    for (File file in files) {
      final url = await uploadFile(task.id, file);
      if (url != null) {
        fileUrls.add(url);
      }
    }

    // Prepare task data with file URLs
    final taskData = task.copyWith(answerUrl: fileUrls.join(',')).toJson();

    // Save task data to Realtime Database
    final response = await dio.post(
      'https://stuteach-f083d-default-rtdb.firebaseio.com/tasks/${task.teacherId}.json',
      data: taskData,
    );

    // Check the response status
    if (response.statusCode == 200 || response.statusCode == 201) {
      print('Task added successfully.');
    } else {
      print('Failed to add task: ${response.statusCode}');
      print('Response: ${response.data}'); // Log the response body for debugging
    }
  } catch (e) {
    if (e is DioError) {
      print('Dio error: ${e.response?.data}'); // Log error details from Dio
    } else {
      print('Error adding task: $e'); // Log any other errors
    }
  }
}

}
