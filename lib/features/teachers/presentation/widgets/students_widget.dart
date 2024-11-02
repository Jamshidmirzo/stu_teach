import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stu_teach/core/constants/app_constants.dart';
import 'package:stu_teach/core/constants/app_dimens.dart';
import 'package:stu_teach/features/auth/data/model/user_model.dart';

class StudentsWidget extends StatelessWidget {
 final UserModel user;
  const StudentsWidget({super.key,required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.PADDING_12),
      decoration: BoxDecoration(
        color: AppConstants.mainColor,
        borderRadius: BorderRadius.circular(AppDimens.BORDER_RADIUS_20),
      ),
      child: Column(
        children: [
          const Center(
            child: CircleAvatar(
              radius: 50,
            ),
          ),
          Text(user.email),
        ],
      ),
    );
    ;
  }
}
