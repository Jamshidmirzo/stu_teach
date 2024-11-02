import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ErrorWidgetCrm extends StatelessWidget {
  String? message;
  ErrorWidgetCrm({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message ?? 'Smth get wrong',
      ),
    );
    
  }
}
