part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default(Status.Loading) Status status,
    String? role,
  })=_UserState;
}
