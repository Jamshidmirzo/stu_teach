part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
   factory AuthState({
  @Default(Status.Initial) Status status,
    String? message,
    User? user,
   })=_AuthState;


}
