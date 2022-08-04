import 'package:flutter/material.dart';
import 'package:grocery_app/screens/details_screen/details_screen.dart';
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


        routes: {
        "/home_screen": (BuildContext context) => HomeScreen(),
        "/details_screen": (BuildContext context) => DetailsScreenWidget(),

    },
      initialRoute: "/home_screen",

      home: const HomeScreen(),


    );



  }
}

