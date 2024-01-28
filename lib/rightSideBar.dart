import 'package:compass_rose/app_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RightSideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppData appData = Provider.of<AppData>(context);
    return Container(
      width: MediaQuery.of(context).size.width / 4.5,
      height: MediaQuery.of(context).size.height - 31,
      color: appData.antiqueBeige,
    );
  }
}
