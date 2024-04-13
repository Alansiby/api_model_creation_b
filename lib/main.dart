// ignore_for_file: prefer_const_constructors

import 'package:api_model_creation_b/controller/home_screen_controller.dart';
import 'package:api_model_creation_b/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeScreenController())
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
