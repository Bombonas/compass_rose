import 'package:compass_rose/app_data.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:provider/provider.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppData appData = Provider.of<AppData>(context);
    return Container(
        color: appData.darkSlateGray,
        child: WindowTitleBarBox(
          child: Row(
            children: [
              Expanded(
                child: MoveWindow(),
              ),
              WindowButtons()
            ],
          ),
        ));
  }
}

class WindowButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppData appData = Provider.of<AppData>(context);
    final buttonColors = WindowButtonColors(
        iconNormal: const Color(0xFF805306),
        mouseOver: appData.antiqueBeige, //Color(0xFFF6A00C
        mouseDown: const Color(0xFF805306),
        iconMouseOver: const Color(0xFF805306),
        iconMouseDown: const Color(0xFFFFD500));
    return Row(
      children: [
        MinimizeWindowButton(
          colors: buttonColors,
        ),
        MaximizeWindowButton(
          colors: buttonColors,
        ),
        CloseWindowButton()
      ],
    );
  }
}
