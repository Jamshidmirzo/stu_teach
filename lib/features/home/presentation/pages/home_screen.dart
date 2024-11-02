import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Import shared_preferences
import 'package:stu_teach/core/constants/app_constants.dart';
import 'package:stu_teach/features/auth/presentation/pages/sign_in_screen.dart';
import 'package:stu_teach/features/home/presentation/blocs/bloc/user_bloc.dart';
import 'package:stu_teach/features/students/presentation/pages/task_screen_students.dart';
import 'package:stu_teach/features/teachers/presentation/blocs/bloc/teacher_bloc.dart';
import 'package:stu_teach/features/teachers/presentation/widgets/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? userRole;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadUserRole();
    context.read<TeacherBloc>().add(const TeacherEvent.getStudnet());
    final userId = FirebaseAuth.instance.currentUser?.uid;
    if (userId != null) {
      context.read<UserBloc>().add(UserEvent.getRole(userId));
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SignInScreen()),
      );
    }
  }

  Future<void> _loadUserRole() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      userRole = prefs.getString(AppConstants.userRole);
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return userRole == 'Student'
        ? TaskScreenStudents(userRole: userRole ?? '')
        : BottomNavBar(
            userRole: userRole ?? "",
          );
  }
}
