// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:stu_teach/features/teachers/data/model/task_for_teacher_model.dart';

class TaskEntityForTeacher {
  final String id;
  final String title;
  final String description;
  final DateTime date;
  final List<String> completedBy;
  final String? answerUrl;
  final String teacherId;
  TaskEntityForTeacher({
    required this.id,
    required this.date,
    required this.title,
    required this.completedBy,
    required this.description,
    this.answerUrl,
    required this.teacherId,
  });
}

extension MapperOnEntity on TaskEntityForTeacher {
  TaskForTeacherModel toModel() {
    return TaskForTeacherModel(
        answerUrl: answerUrl,
        id: id,
        date: date,
        title: title,
        completedBy: completedBy,
        description: description,
        teacherId: teacherId);
  }
}
