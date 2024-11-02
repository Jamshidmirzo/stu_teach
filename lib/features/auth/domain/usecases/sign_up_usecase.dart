// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:stu_teach/core/error/failure.dart';
import 'package:stu_teach/core/usecase/usecase.dart';
import 'package:stu_teach/features/auth/domain/repositories/auth_repositories.dart';

class SignUpUsecase extends Usecase<User?, SignUpParams> {
  AuthRepositories authRepositories;
  SignUpUsecase({
    required this.authRepositories,
  });
  @override
  Future<Either<Failure, User?>> call(SignUpParams params) {
    return authRepositories.signUp(params.email, params.password,params.role);
  }
}

class SignUpParams {
  String email;
  String password;
  String role;
  SignUpParams({
    required this.role,
    required this.email,
    required this.password,
  });
}
