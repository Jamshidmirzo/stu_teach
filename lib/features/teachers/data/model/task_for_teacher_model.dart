import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stu_teach/features/teachers/domain/entity/task_entity_for_teacher.dart';

part 'task_for_teacher_model.freezed.dart';
part 'task_for_teacher_model.g.dart';

@freezed
class TaskForTeacherModel with _$TaskForTeacherModel {
  factory TaskForTeacherModel({
    required String id,
    required String title,
    required String description,
    required DateTime date,
    required List<String> completedBy,
    required String? answerUrl,
    required String teacherId,
  }) = _TaskForTeacherModel;

  factory TaskForTeacherModel.fromJson(Map<String, dynamic> json) =>
      _$TaskForTeacherModelImpl.fromJson(json);
}

extension MapperOnModel on TaskForTeacherModel {
  TaskEntityForTeacher toEntity() {
    return TaskEntityForTeacher(
        id: id,
        date: date,
        title: title,
        completedBy: completedBy,
        description: description,
        teacherId: teacherId);
  }
}
