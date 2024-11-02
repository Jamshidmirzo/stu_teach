part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.logIn(AuthEntity entity) = _LogIn;
  const factory AuthEvent.signUp(AuthEntity entity,String role) = _SignUp;
  const factory AuthEvent.logOut() = _LogOut;
  const factory AuthEvent.resetPass(String email) = _ResetPass;
  const factory AuthEvent.getUser() = _getUser;
  const factory AuthEvent.checkUser() = _checkUser;

  

}