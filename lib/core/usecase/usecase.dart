import 'package:dartz/dartz.dart';
import 'package:stu_teach/core/error/failure.dart';

abstract class Usecase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
