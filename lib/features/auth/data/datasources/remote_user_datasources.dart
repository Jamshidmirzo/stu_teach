import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stu_teach/core/constants/app_constants.dart';
import 'package:stu_teach/features/auth/data/model/user_model.dart';

class RemoteUserDatasources {
  final Dio dio;

  RemoteUserDatasources({required this.dio});

  Future<void> addUser(UserModel userModel) async {
    try {
      print(userModel.id);
      final response = await dio.put(
        'https://stuteach-f083d-default-rtdb.firebaseio.com/users/${userModel.id}.json',
        data: userModel.toJson(),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        print('User added successfully.');
      } else {
        print('Failed to add user: ${response.statusCode}');
      }
    } catch (e) {
      print('Failed to add user: $e');
    }
  }

  Future<String?> getUserRoleById(String userId) async {
    print(userId);
    try {
      final response = await dio.get(
        'https://stuteach-f083d-default-rtdb.firebaseio.com/users/$userId.json',
      );

      if (response.statusCode == 200) {
        final user = UserModel.fromJson(response.data);
        // Save role to SharedPreferences
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString(AppConstants.userRole, user.role);
        return user.role;
      } else {
        print('Failed to fetch user: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching user role: $e');
    }
    return null;
  }
}
