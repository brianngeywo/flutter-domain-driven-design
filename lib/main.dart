import 'package:ddd_course/injection.dart';
import 'package:ddd_course/presentation/core/my_app.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(MyApp());
}

