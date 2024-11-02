import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stu_teach/features/auth/presentation/pages/sign_in_screen.dart';
import 'package:stu_teach/features/auth/presentation/blocs/bloc/auth_bloc.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppBarWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: [
        IconButton(
          onPressed: () {
            context.read<AuthBloc>().add(const AuthEvent.logOut());
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const SignInScreen()),
            );
          },
          icon: const Icon(Icons.logout_outlined),
        ),
      ],
    );
  }

  // The preferredSize is required for PreferredSizeWidget
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
