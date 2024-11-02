// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stu_teach/core/error/failure.dart';
import 'package:stu_teach/features/auth/data/datasources/remote_datasources.dart';
import 'package:stu_teach/features/auth/domain/repositories/auth_repositories.dart';

class AuthRepositoriesImpl extends AuthRepositories {
  RemoteDatasources remoteDatasources;
  AuthRepositoriesImpl({
    required this.remoteDatasources,
  });
  @override
  Stream<Either<Failure, User?>> checkStatus() {
    try {
      final response = remoteDatasources.authStateChanges();
      return response
          .map((user) => Right<Failure, User?>(user))
          .handleError((error) {
        return Left(
          ServerFailure(),
        );
      });
    } catch (e) {
      return Stream.value(Left(ServerFailure()));
    }
  }

  @override
  Future<Either<Failure, User?>> getUser() {
    return _getUser(() => remoteDatasources.getCurrentUser());
  }

  @override
  Future<Either<Failure, User?>> logIn(String email, String password) {
    return _logIn(() => remoteDatasources.signInWithEmailPassword(
        email: email, password: password));
  }

  @override
  Future<Either<Failure, void>> logOut() async {
    return _logOut(() => remoteDatasources.signOut());
  }

  @override
  Future<Either<Failure, void>> resetPass(String email) {
    return _reset(() => remoteDatasources.sendPasswordResetEmail(email: email));
  }

  @override
  Future<Either<Failure, User?>> signUp(
      String email, String password, String role) {
    return _signUp(
      () => remoteDatasources.signUpWithEmailPassword(
          email: email, password: password, role: role),
    );
  }

  Future<Either<Failure, User?>> _signUp(Future<User?> Function() logIn) async {
    try {
      final recponce = await logIn();
      return Right(recponce);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

 
  Future<Either<Failure, User?>> _logIn(Future<User?> Function() logIn) async {
    try {
      final recponce = await logIn();
      return Right(recponce);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, void>> _logOut(Future<void> Function() logOut) async {
    try {
      final recponce = await logOut();
      return Right(recponce);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, void>> _reset(Future<void> Function() reset) async {
    try {
      final recponce = await reset();
      return Right(recponce);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, User?>> _getUser(User? Function() logIn) async {
    try {
      final recponce = logIn();
      return Right(recponce);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
