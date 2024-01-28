import 'dart:ui';

import 'package:compass_rose/app_data.dart';
import 'package:compass_rose/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

class CenterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppData appData = Provider.of<AppData>(context);
    return Expanded(
        child: SizedBox(
      height: MediaQuery.of(context).size.height - 31,
      child: CustomPaint(
        painter: MyPainter(
          appData.darkSlateGray,
          shader: fragmentProgram.fragmentShader(),
        ),
      ),
    ));
  }
}

class MyPainter extends CustomPainter {
  MyPainter(this.color, {required this.shader});

  final Color color;
  final FragmentShader shader;
  @override
  void paint(Canvas canvas, Size size) {
    shader.setFloat(0, size.width);
    shader.setFloat(1, size.height);
    shader.setFloat(2, color.red.toDouble() / 255);
    shader.setFloat(3, color.green.toDouble() / 255);
    shader.setFloat(4, color.blue.toDouble() / 255);
    shader.setFloat(5, color.alpha.toDouble() / 255);

    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.width, size.height),
      Paint()..shader = shader,
    );
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => color != oldDelegate.color;
}

// Container(
//         decoration: BoxDecoration(
//           gradient: RadialGradient(
//             radius: 1,
//             colors: <Color>[Color.fromARGB(255, 17, 51, 77), appData.darkSlateGray],
//             stops: <double>[0.1, 0.9],
//             ),
           
//         ),
//       )