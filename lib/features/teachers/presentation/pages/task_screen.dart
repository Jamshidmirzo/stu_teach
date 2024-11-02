import 'package:flutter/material.dart';
import 'package:stu_teach/core/constants/app_constants.dart';
import 'package:stu_teach/core/widgets/app_bar_widget.dart';
import 'package:stu_teach/features/teachers/presentation/pages/add_task_sceen.dart';

class TaskScreen extends StatelessWidget {
  final String userRole;
  const TaskScreen({super.key, required this.userRole});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppConstants.mainColor,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddTaskScreen(),
              ));
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBarWidget(title: userRole),
      body: Column(
        children: [],
      ),
    );
  }
}
