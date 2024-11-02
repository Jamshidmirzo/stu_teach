import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stu_teach/core/constants/app_constants.dart';
import 'package:stu_teach/features/auth/data/datasources/remote_user_datasources.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final RemoteUserDatasources remoteUserDatasources;

  UserBloc(this.remoteUserDatasources) : super(const UserState()) {
    on<_getRole>(_get);
  }

  Future<void> _get(_getRole event, Emitter<UserState> emit) async {
    emit(state.copyWith(status: Status.Loading)); 
    try {
      final response =
          await remoteUserDatasources.getUserRoleById(event.userId);
      emit(state.copyWith(status: Status.Success, role: response));
    } catch (e) {
      emit(state.copyWith(status: Status.Error)); 
    }
  }
}
