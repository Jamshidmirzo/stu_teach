part of 'teacher_bloc.dart';

@freezed
class TeacherState with _$TeacherState {
  const factory TeacherState({
    @Default(Status.Loading) Status status,
    List<UserModel>? users,
    String? message
  }) =_TeacherState;
}
