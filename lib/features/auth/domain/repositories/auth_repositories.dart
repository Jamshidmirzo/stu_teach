import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stu_teach/core/error/failure.dart';

abstract class AuthRepositories {
  Future<Either<Failure, User?>> logIn(String email,String password);
  Future<Either<Failure, User?>> signUp(String email,String password,String role);
  Future<Either<Failure, void>> resetPass(String email);
  Stream<Either<Failure, User?>> checkStatus();
  Future<Either<Failure, User?>> getUser();
  Future<Either<Failure, void>> logOut();
}
