import 'package:flutter/material.dart';
import 'login.dart';


void main() async {
  runApp(MediaQuery(
    data: new MediaQueryData(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginscreen(),
    ),
  ));
}



