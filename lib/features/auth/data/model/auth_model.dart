import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stu_teach/features/auth/domain/entity/auth_entity.dart';
part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthModel with _$AuthModel {
  factory AuthModel({
    required String email,
    required String password,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelImpl.fromJson(json);
}

extension AuthModelMapper on AuthModel {
  AuthEntity toEnity() {
    return AuthEntity(email: email, password: password);
  }
}
