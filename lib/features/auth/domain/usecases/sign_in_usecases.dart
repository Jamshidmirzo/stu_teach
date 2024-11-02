import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stu_teach/core/error/failure.dart';
import 'package:stu_teach/core/usecase/usecase.dart';
import 'package:stu_teach/features/auth/domain/repositories/auth_repositories.dart';

class SignInUsecases extends Usecase<User?, SignInParams> {
  AuthRepositories authRepositories;
  SignInUsecases({
    required this.authRepositories,
  });
  @override
  Future<Either<Failure, User?>> call(SignInParams params) {
    return authRepositories
        .logIn(params.email, params.password);
  }
}

class SignInParams {
  String email;
  String password;
  SignInParams({
    required this.email,
    required this.password,
  });
}
