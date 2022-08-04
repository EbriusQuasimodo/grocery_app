import 'package:flutter/material.dart';

AppBar HomeAppBar (BuildContext context){
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,

      title: const Text('Grocery Shop',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w300,
        color: Colors.black87,),
      ),
      centerTitle: true,
    );
  }

