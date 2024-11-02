// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:stu_teach/core/error/failure.dart';
import 'package:stu_teach/features/auth/data/model/user_model.dart';
import 'package:stu_teach/features/teachers/data/datasources/remote_teachers_datasources.dart';
import 'package:stu_teach/features/teachers/domain/entity/task_entity_for_teacher.dart';
import 'package:stu_teach/features/teachers/domain/repositories/teacher_repositories.dart';

class TeacherRepositoriesImpl extends TeacherRepositories {
  RemoteTeachersDatasources remoteTeachersDatasources;
  TeacherRepositoriesImpl({
    required this.remoteTeachersDatasources,
  });
  @override
  Future<Either<Failure, void>> createATask(
      TaskEntityForTeacher taskForTeacher, List<File> files) {
    return _addTask(() =>
        remoteTeachersDatasources.addTask(taskForTeacher.toModel(), files));
  }

  @override
  Future<Either<Failure, List<TaskEntityForTeacher>>> getMyTask(
      String teacherId) {
    // TODO: implement getMyTask
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<UserModel>>> getStudnets() {
    return _getStudents(() => remoteTeachersDatasources.getStudents());
  }

  Future<Either<Failure, void>> _addTask(Future<void> Function() tasks) async {
    try {
      final recponce = await tasks();
      return Right(recponce);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, List<UserModel>>> _getStudents(
      Future<List<UserModel>> Function() students) async {
    try {
      final recponce = await students();
      return Right(recponce);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
