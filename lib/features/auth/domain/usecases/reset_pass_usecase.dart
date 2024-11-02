// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:stu_teach/core/error/failure.dart';
import 'package:stu_teach/core/usecase/usecase.dart';
import 'package:stu_teach/features/auth/domain/repositories/auth_repositories.dart';

class ResetPassUsecase extends Usecase<void, ResetParams> {
  AuthRepositories authRepositories;
  ResetPassUsecase({
    required this.authRepositories,
  });
  @override
  Future<Either<Failure, void>> call(ResetParams params) {
    return authRepositories.resetPass(params.email);
  }
}

class ResetParams {
  String email;
  ResetParams({
    required this.email,
  });
}
