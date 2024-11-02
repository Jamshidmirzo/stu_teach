// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:stu_teach/features/auth/data/model/auth_model.dart';

class AuthEntity {
  String email;
  String password;
  AuthEntity({
    required this.email,
    required this.password,
  });
}

extension AuthEntityMapper on AuthEntity {
  AuthModel toModel() {
    return AuthModel(email: email, password: password);
  }
}
