
import 'package:compass_rose/app_data.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:background_patterns/background_patterns.dart';

class CenterApp extends StatelessWidget{
  final AppData appData = AppData();
  @override
  Widget build(BuildContext context){
    return Expanded(child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                radius: 1,
                colors: [
                  Color.fromARGB(255, 17, 51, 77),
                  appData.darkSlateGray,
                ],
                stops: [0.1, 0.9],
              ),
            ),
          ),
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return createDotShader(bounds);
            },
            blendMode: BlendMode.srcOver,
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
  
  Shader createDotShader(Rect bounds) {
    return RadialGradient(
      radius: 0.1,
      colors: [Colors.black, Colors.transparent],
      tileMode: TileMode.mirror,
    ).createShader(bounds);
  }
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