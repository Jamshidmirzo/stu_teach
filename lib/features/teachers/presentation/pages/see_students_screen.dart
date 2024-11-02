import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stu_teach/core/constants/app_constants.dart';
import 'package:stu_teach/core/constants/app_dimens.dart';
import 'package:stu_teach/core/widgets/error_widget.dart';
import 'package:stu_teach/core/widgets/loading_widget.dart';
import 'package:stu_teach/features/teachers/presentation/blocs/bloc/teacher_bloc.dart';
import 'package:stu_teach/features/teachers/presentation/widgets/students_widget.dart';

class SeeStudentsScreen extends StatelessWidget {
  const SeeStudentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TeacherBloc, TeacherState>(
        builder: (context, state) {
          if (state.status == Status.Error) {
            return ErrorWidgetCrm(message: state.message);
          }
          if (state.status == Status.Loading) {
            return const LoadingWidget();
          }
          if (state.status == Status.Success) {
            final users = state.users;

            return users == null
                ? const Center(
                    child: Text("No Studnets"),
                  )
                : GridView.builder(
                    itemCount: users.length,
                    padding: const EdgeInsets.all(AppDimens.PADDING_20),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.6,
                    ),
                    itemBuilder: (context, index) {
                      final user = users[index];
                      return StudentsWidget(user: user);
                    },
                  );
          }
          return Container();
        },
      ),
    );
  }
}
