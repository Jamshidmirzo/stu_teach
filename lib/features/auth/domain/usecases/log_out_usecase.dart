// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:stu_teach/core/error/failure.dart';
import 'package:stu_teach/core/usecase/usecase.dart';
import 'package:stu_teach/features/auth/domain/repositories/auth_repositories.dart';

class LogOutUsecase extends Usecase<void, void> {
  AuthRepositories authRepositories;
  LogOutUsecase({
    required this.authRepositories,
  });
  @override
  Future<Either<Failure, void>> call(void params) {
    return authRepositories.logOut();
  }
}
