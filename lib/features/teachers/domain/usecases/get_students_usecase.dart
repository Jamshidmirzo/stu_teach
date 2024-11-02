// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:stu_teach/core/error/failure.dart';
import 'package:stu_teach/core/usecase/usecase.dart';
import 'package:stu_teach/features/auth/data/model/user_model.dart';
import 'package:stu_teach/features/teachers/domain/repositories/teacher_repositories.dart';

class GetStudentsUsecase extends Usecase<List<UserModel>, void> {
  TeacherRepositories teacherRepositories;
  GetStudentsUsecase({
    required this.teacherRepositories,
  });
  @override
  Future<Either<Failure, List<UserModel>>> call(void params) {
    return teacherRepositories.getStudnets();
  }
}
