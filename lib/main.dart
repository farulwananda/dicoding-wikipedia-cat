import 'package:flutter/material.dart';
import 'package:dicoding_flutter_wicat/StartPage.dart';
import 'package:dicoding_flutter_wicat/RegisterPage.dart';
import 'package:dicoding_flutter_wicat/LoginPage.dart';
import 'package:dicoding_flutter_wicat/WikiPage.dart';


void main() {
  runApp(Wicat());
}

class Wicat extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),
    );
  }
}
