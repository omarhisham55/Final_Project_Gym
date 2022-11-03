import 'package:final_project_gym/Gym.dart';
import 'package:final_project_gym/Home.dart';
import 'package:final_project_gym/Navigation.dart';
import 'package:final_project_gym/Login.dart';
import 'package:final_project_gym/SignUp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navigation(),
    );
  }
}