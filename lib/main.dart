import 'dart:ui';

import 'package:compass_rose/app_data.dart';
import 'package:compass_rose/centerApp.dart';
import 'package:compass_rose/topBar.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

late FragmentProgram fragmentProgram;

Future<void> main() async{
  fragmentProgram = await FragmentProgram.fromAsset(
    'assets/shaders/backgroundShader.frag',
  );

  runApp(MyApp());
  doWhenWindowReady(() {
    final win = appWindow;
    win.maximize();
    win.show();
  });
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