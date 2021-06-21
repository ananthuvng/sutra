import 'package:flutter/material.dart';
import 'home.dart';
import 'logo.dart';
import 'quiz.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => logo(),
      '/home': (context) => home(),
      '/quiz': (context) => quiz()
    },
  ));
}
