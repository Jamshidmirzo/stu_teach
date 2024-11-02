
import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:stu_teach/core/error/failure.dart';
import 'package:stu_teach/core/usecase/usecase.dart';
import 'package:stu_teach/features/teachers/domain/entity/task_entity_for_teacher.dart';
import 'package:stu_teach/features/teachers/domain/repositories/teacher_repositories.dart';

class AddTaskUsecase extends Usecase<void, AddTaskParams> {
  TeacherRepositories teacherRepositories;
  AddTaskUsecase({
    required this.teacherRepositories,
  });
  @override
  Future<Either<Failure, void>> call(AddTaskParams params) {
    return teacherRepositories.createATask(
        params.taskEntityForTeacher, params.files);
  }
}

class AddTaskParams {
  TaskEntityForTeacher taskEntityForTeacher;
  List<File> files;
  AddTaskParams({
    required this.taskEntityForTeacher,
    required this.files,
  });
}
