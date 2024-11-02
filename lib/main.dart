import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stu_teach/features/auth/presentation/blocs/bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stu_teach/features/home/presentation/blocs/bloc/user_bloc.dart';
import 'package:stu_teach/features/splash/presentation/pages/splash_screen.dart';
import 'package:stu_teach/features/teachers/presentation/blocs/bloc/teacher_bloc.dart';
import 'package:stu_teach/server_locator.dart';
import 'server_locator.dart' as di;

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<AuthBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<UserBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<TeacherBloc>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
