import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stu_teach/core/constants/app_constants.dart';
import 'package:stu_teach/features/auth/presentation/blocs/bloc/auth_bloc.dart';
import 'package:stu_teach/features/auth/presentation/pages/sign_in_screen.dart';
import 'package:stu_teach/features/home/presentation/pages/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((_) {
      context.read<AuthBloc>().add(AuthEvent.checkUser());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.status == Status.Unauthenticated) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => SignInScreen(),
              ),
            );
          }
          if (state.status == Status.Success) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          }
        },
        child: Center(
          child: Image.asset('assets/icons/main_icon.png'),
        ),
      ),
    );
  }
}
