import 'package:flutter/material.dart';
import 'package:flutter_bloc_example1/bloc/inheritedwidget.dart';
import 'package:flutter_bloc_example1/bloc/login_bloc.dart';
import 'package:flutter_bloc_example1/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}
