import 'package:compass_rose/app_data.dart';
import 'package:compass_rose/centerApp.dart';
import 'package:compass_rose/topBar.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

void main() async{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  AppData appData = AppData();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
            children: [TopBar(), CenterApp(),],
          ),
          
     ),
      
    );
  }
}