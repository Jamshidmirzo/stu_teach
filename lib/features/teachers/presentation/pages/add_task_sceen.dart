// add_task_screen.dart
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:intl/intl.dart';
import 'package:stu_teach/core/constants/app_constants.dart';
import 'package:stu_teach/core/widgets/loading_widget.dart';
import 'package:stu_teach/features/teachers/domain/entity/task_entity_for_teacher.dart';
import 'package:stu_teach/features/teachers/presentation/blocs/bloc/teacher_bloc.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  DateTime? selectedDateTime;
  List<File> selectedFiles = [];

  void _selectFiles() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: true);
    if (result != null) {
      setState(() {
        selectedFiles = result.paths.map((path) => File(path!)).toList();
      });
    }
  }

  void _addTask() {
    final task = TaskEntityForTeacher(
      id: DateTime.now().toString(),
      title: titleController.text,
      description: descriptionController.text,
      date: selectedDateTime ?? DateTime.now(),
      completedBy: [],
      answerUrl: null,
      teacherId: FirebaseAuth.instance.currentUser!.uid,
    );

    BlocProvider.of<TeacherBloc>(context)
        .add(TeacherEvent.addTask(task, selectedFiles));
  }

  Future<void> _selectDateTime(BuildContext context) async {
    final DateTime? picked = await showDateTimePicker(context);
    if (picked != null && picked != selectedDateTime) {
      setState(() {
        selectedDateTime = picked;
      });
    }
  }

  Future<DateTime?> showDateTimePicker(BuildContext context) {
    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Task")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: "Title"),
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: "Description"),
            ),
            const SizedBox(height: 20),
            Text(
              selectedDateTime != null
                  ? DateFormat('yyyy-MM-dd – kk:mm').format(selectedDateTime!)
                  : 'No date selected!',
            ),
            ElevatedButton(
              onPressed: () => _selectDateTime(context),
              child: const Text('Select Date & Time'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _selectFiles,
              child: const Text('Select Files'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _addTask,
              child: const Text('Add Task'),
            ),
            BlocConsumer<TeacherBloc, TeacherState>(
              listener: (context, state) {
                if (state.status == Status.Success) {
                  Navigator.pop(context);
                }
              },
              builder: (context, state) {
                if (state.status == Status.Loading) {
                  return const LoadingWidget();
                } else if (state.status == Status.Error) {
                  return Text(state.message ?? 'aqwertyhj',
                      style: const TextStyle(color: Colors.red));
                }
                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
