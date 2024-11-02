import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stu_teach/core/config/dio_config.dart';
import 'package:stu_teach/features/auth/data/datasources/remote_datasources.dart';
import 'package:stu_teach/features/auth/data/datasources/remote_user_datasources.dart';
import 'package:stu_teach/features/auth/data/repositories/auth_repositories.dart';
import 'package:stu_teach/features/auth/domain/usecases/check_status_usecase.dart';
import 'package:stu_teach/features/auth/domain/usecases/get_user_usecase.dart';
import 'package:stu_teach/features/auth/domain/usecases/log_out_usecase.dart';
import 'package:stu_teach/features/auth/domain/usecases/reset_pass_usecase.dart';
import 'package:stu_teach/features/auth/domain/usecases/sign_in_usecases.dart';
import 'package:stu_teach/features/auth/domain/usecases/sign_up_usecase.dart';
import 'package:stu_teach/features/auth/presentation/blocs/bloc/auth_bloc.dart';
import 'package:stu_teach/features/home/presentation/blocs/bloc/user_bloc.dart';
import 'package:stu_teach/features/teachers/data/datasources/remote_teachers_datasources.dart';
import 'package:stu_teach/features/teachers/data/repositories/teacher_repositories.dart';
import 'package:stu_teach/features/teachers/domain/usecases/add_task_usecase.dart';
import 'package:stu_teach/features/teachers/domain/usecases/get_students_usecase.dart';
import 'package:stu_teach/features/teachers/presentation/blocs/bloc/teacher_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(() => AuthBloc(
      sl<CheckStatusUsecase>(),
      sl<GetUserUsecase>(),
      sl<LogOutUsecase>(),
      sl<ResetPassUsecase>(),
      sl<SignInUsecases>(),
      sl<SignUpUsecase>()));

  sl.registerFactory(() => UserBloc(sl<RemoteUserDatasources>()));
  sl.registerFactory(
      () => CheckStatusUsecase(authRepositories: sl<AuthRepositoriesImpl>()));
  sl.registerFactory(
      () => GetUserUsecase(authRepositories: sl<AuthRepositoriesImpl>()));
  sl.registerFactory(
      () => LogOutUsecase(authRepositories: sl<AuthRepositoriesImpl>()));
  sl.registerFactory(
      () => ResetPassUsecase(authRepositories: sl<AuthRepositoriesImpl>()));
  sl.registerFactory(
      () => SignInUsecases(authRepositories: sl<AuthRepositoriesImpl>()));
  sl.registerFactory(
      () => SignUpUsecase(authRepositories: sl<AuthRepositoriesImpl>()));

  if (!sl.isRegistered<AuthRepositoriesImpl>()) {
    sl.registerLazySingleton<AuthRepositoriesImpl>(
        () => AuthRepositoriesImpl(remoteDatasources: sl<RemoteDatasources>()));
  }

  if (!sl.isRegistered<RemoteDatasources>()) {
    sl.registerLazySingleton<RemoteDatasources>(() => RemoteDatasources(
        firebaseAuth: FirebaseAuth.instance,
        remoteUserDatasources: sl<RemoteUserDatasources>()));
  }

  final client = DioConfig().client;
  sl.registerFactory(() => RemoteUserDatasources(dio: Dio()));

  sl.registerFactory(
      () => TeacherBloc(sl<GetStudentsUsecase>(), sl<AddTaskUsecase>()));

  sl.registerFactory(
      () => AddTaskUsecase(teacherRepositories: sl<TeacherRepositoriesImpl>()));
  sl.registerFactory(() =>
      GetStudentsUsecase(teacherRepositories: sl<TeacherRepositoriesImpl>()));
  sl.registerFactory(() => TeacherRepositoriesImpl(
      remoteTeachersDatasources: sl<RemoteTeachersDatasources>()));
  sl.registerFactory(() => RemoteTeachersDatasources(
        dio: Dio(),
        firebaseStorage: FirebaseStorage.instance,
      ));
}
