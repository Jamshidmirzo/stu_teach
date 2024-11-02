import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stu_teach/core/constants/app_constants.dart';
import 'package:stu_teach/core/constants/app_dimens.dart';
import 'package:stu_teach/core/extension/extensions.dart';
import 'package:stu_teach/core/widgets/text_wdiget.dart';
import 'package:stu_teach/features/auth/domain/entity/auth_entity.dart';
import 'package:stu_teach/features/auth/presentation/blocs/bloc/auth_bloc.dart';
import 'package:stu_teach/features/auth/presentation/widgets/button_for_sign.dart';
import 'package:stu_teach/features/home/presentation/pages/home_screen.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final List<String> roles = ['Student', 'Teacher'];
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final confirmPassController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String role = 'Student';

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    confirmPassController.dispose();
    super.dispose();
  }

  void submit(BuildContext context) {
    if (_formKey.currentState?.validate() == true) {
      context.read<AuthBloc>().add(
            AuthEvent.signUp(AuthEntity(
                email: emailController.text, password: passController.text,),role),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.mainColor,
      appBar: AppBar(
        backgroundColor: AppConstants.mainColor,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(AppDimens.PADDING_20),
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state.status == Status.Loading) {
                return const Center(child: CircularProgressIndicator());
              }

              if (state.status == Status.Error) {
                return Column(
                  children: [
                    Center(child: Text(state.message ?? 'An error occurred')),
                    buildForm(),
                  ],
                );
              }

              if (state.status == Status.Success) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => const HomeScreen(),));
                });
                return const Center(child: Text("Registration Successful"));
              }

              return buildForm();
            },
          ),
        ),
      ),
    );
  }

  Widget buildForm() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/main_icon.png',
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.width * 0.1,
            ),
            Text(
              'WoorkRoom',
              style: GoogleFonts.nunitoSans(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        20.hs(),
        Container(
          padding: const EdgeInsets.all(AppDimens.PADDING_20),
          width: double.infinity,
          height: MediaQuery.of(context).size.width * 1.33,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDimens.BORDER_RADIUS_20),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Sign Up to WoorkRoom',
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
              ),
              20.hs(),
              TextWidget(
                text: 'Email Address',
                controller: emailController,
                labelText: 'test@gmail.com',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              TextWidget(
                text: 'Password',
                controller: passController,
                labelText: '********',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              TextWidget(
                text: 'Confirm Password',
                controller: confirmPassController,
                labelText: '********',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your password';
                  }
                  if (value != passController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Choose Role',
                ),
                items: roles.map((role) {
                  return DropdownMenuItem(
                    value: role,
                    child: Text(role),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    role = value ?? "Student";
                  });
                },
              ),
              20.hs(),
              ButtonForSign(
                onTap: () => submit(context),
              ),
              20.hs(),
              Center(
                child: ZoomTapAnimation(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Already have an account? Go to Login',
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

}
