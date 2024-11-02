import 'package:flutter/material.dart';

class AppConstants {
  static Color mainColor = Colors.blue.shade50;
  static String userRole = 'userRole';
}

// ignore: constant_identifier_names
enum Status { Loading, Error, Success, Initial, Unauthenticated }
