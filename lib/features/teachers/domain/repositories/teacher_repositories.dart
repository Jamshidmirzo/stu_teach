import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:stu_teach/core/error/failure.dart';
import 'package:stu_teach/features/auth/data/model/user_model.dart';
import 'package:stu_teach/features/teachers/domain/entity/task_entity_for_teacher.dart';

abstract class TeacherRepositories {
  Future<Either<Failure, void>> createATask(
      TaskEntityForTeacher taskForTeacher, List<File> files);
  Future<Either<Failure, List<TaskEntityForTeacher>>> getMyTask(
      String teacherId);
  Future<Either<Failure, List<UserModel>>> getStudnets();
}
