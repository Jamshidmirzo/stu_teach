import 'package:flutter/material.dart';
import 'package:stu_teach/core/widgets/app_bar_widget.dart';

class TaskScreenStudents extends StatelessWidget {
  final String userRole;
  const TaskScreenStudents({super.key, required this.userRole});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBarWidget(title: userRole),
    );
  }
}
