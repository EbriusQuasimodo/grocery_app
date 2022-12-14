import 'package:flutter/material.dart';
import 'package:grocery_app/screens/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GroceryApp',
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      home: const HomeScreen(),
    );
  }
}

