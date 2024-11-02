import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stu_teach/core/constants/app_constants.dart';
import 'package:stu_teach/core/constants/app_dimens.dart';
import 'package:stu_teach/core/extension/extensions.dart';
import 'package:stu_teach/core/widgets/loading_widget.dart';
import 'package:stu_teach/core/widgets/text_wdiget.dart';
import 'package:stu_teach/features/auth/domain/entity/auth_entity.dart';
import 'package:stu_teach/features/auth/presentation/blocs/bloc/auth_bloc.dart';
import 'package:stu_teach/features/auth/presentation/pages/sign_up_screen.dart';
import 'package:stu_teach/features/auth/presentation/widgets/button_for_sign.dart';
import 'package:stu_teach/features/home/presentation/pages/home_screen.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
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
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state.status == Status.Success) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              } else if (state.status == Status.Error) {
                
              }
            },
            builder: (context, state) {
              if (state.status == Status.Loading) {
                return const LoadingWidget();
              }

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
                    height: MediaQuery.of(context).size.width * 1.1,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppDimens.BORDER_RADIUS_20),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Sign In to WoorkRoom',
                            style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        20.hs(),
                        TextWidget(
                          text: 'Email Address',
                          controller: emailcontroller,
                          labelText: 'test@gmail.com',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Input your email';
                            }
                            return null;
                          },
                        ),
                        TextWidget(
                          text: 'Password',
                          controller: passcontroller,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Input your password';
                            }
                            return null;
                          },
                          labelText: '********',
                        ),
                        ButtonForSign(
                          onTap: submit,
                        ),
                        20.hs(),
                        Center(
                          child: ZoomTapAnimation(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Don’t have an account?',
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
            },
          ),
        ),
      ),
    );
  }

  void submit() {
    if (_formKey.currentState!.validate()) {
      context.read<AuthBloc>().add(AuthEvent.logIn(AuthEntity(
          email: emailcontroller.text, password: passcontroller.text)));
    }
  }
}
