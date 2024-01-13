import 'package:compass_rose/app_data.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

class TopBar extends StatelessWidget{
  final AppData appData = AppData();
  @override
  Widget build(BuildContext context){
    return Container(
      color: appData.darkSlateGray,
      child: WindowTitleBarBox(
            child: Row(
              children: [
                Expanded(child: MoveWindow(),
                ),
                WindowButtons()
              ],
            ),
          )
      );
  }
}

class WindowButtons extends StatelessWidget {
  final buttonColors = WindowButtonColors(
    iconNormal: const Color(0xFF805306),
    mouseOver: const Color(0xFFF6A00C),
    mouseDown: const Color(0xFF805306),
    iconMouseOver: const Color(0xFF805306),
    iconMouseDown: const Color(0xFFFFD500));
  final AppData appData = AppData();
  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors,),
        MaximizeWindowButton(colors: buttonColors,),
        CloseWindowButton()
      ],
    );
  }
}