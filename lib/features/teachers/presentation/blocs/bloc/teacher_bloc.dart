// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:stu_teach/core/constants/app_constants.dart';
import 'package:stu_teach/core/error/failure.dart';
import 'package:stu_teach/features/auth/data/model/user_model.dart';
import 'package:stu_teach/features/teachers/domain/entity/task_entity_for_teacher.dart';
import 'package:stu_teach/features/teachers/domain/usecases/add_task_usecase.dart';
import 'package:stu_teach/features/teachers/domain/usecases/get_students_usecase.dart';

part 'teacher_bloc.freezed.dart';
part 'teacher_event.dart';
part 'teacher_state.dart';

class TeacherBloc extends Bloc<TeacherEvent, TeacherState> {
  GetStudentsUsecase getStudentsUsecase;
  AddTaskUsecase addTaskUsecase;
  TeacherBloc(
    this.getStudentsUsecase,
    this.addTaskUsecase,
  ) : super(TeacherState()) {
    on<_getStudents>(_getS);
    on<_addTask>(_addT);
  }

  Future<void> _getS(_getStudents event, Emitter<TeacherState> emit) async {
    final recponce = await getStudentsUsecase(null);
    recponce.fold((error) {
      emit(state.copyWith(
        status: Status.Error,
        message: _failureMessage(error),
      ));
    }, (data) {
      emit(state.copyWith(status: Status.Success, users: data));
    });
  }

  Future<void> _addT(_addTask event, Emitter<TeacherState> emit) async {
    final recponce = await addTaskUsecase(
        AddTaskParams(taskEntityForTeacher: event.entity, files: event.files));
    recponce.fold((error) {
      emit(state.copyWith(
        status: Status.Error,
        message: _failureMessage(error),
      ));
    }, (data) {
      emit(state.copyWith(status: Status.Success,));
    });
  }

  String _failureMessage(Failure failure) {
    switch (failure) {
      case ServerFailure():
        return 'Server Exception';
      case CacheFailure():
        return "Cache Error";
      default:
        return 'Something get wrong';
    }
  }
}
