import 'package:flutter/material.dart';
import 'package:vedic_math/home.dart';
import 'package:vedic_math/logo.dart';
import 'package:vedic_math/quiz.dart';

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
