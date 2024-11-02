// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stu_teach/core/constants/app_dimens.dart';
import 'package:stu_teach/core/extension/extensions.dart';

class TextWidget extends StatelessWidget {
  final TextEditingController controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? labelText;
  final bool? obscureText;
  final String text;
  final String? Function(String?)? validator;
  const TextWidget({
    super.key,
    this.obscureText,
    required this.text,
    this.validator,
    required this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: GoogleFonts.nunitoSans(
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
        10.hs(),
        TextFormField(
          validator: validator,
          obscureText: obscureText ?? false,
          controller: controller,
          decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)),
            labelText: labelText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppDimens.BORDER_RADIUS_10),
            ),
          ),
        ),
        16.hs(),
      ],
    );
  }
}
