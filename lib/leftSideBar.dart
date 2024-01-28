import 'package:compass_rose/app_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LeftSideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppData appData = Provider.of<AppData>(context);
    bool inMenu = true;
    return Container(
      width: MediaQuery.of(context).size.width / 4.5,
      height: MediaQuery.of(context).size.height - 31,
      color: appData.antiqueBeige,
      child: inMenu ? menu(context) : null,
    );
  }

  Widget menu(BuildContext context) {
    AppData appData = Provider.of<AppData>(context);
    return (Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(
        height: 15,
      ),
      TextButton(
        style: TextButton.styleFrom(
          foregroundColor: appData.darkSlateGray,
          textStyle: const TextStyle(fontSize: 20),
        ),
        onPressed: () {},
        child: const Text(' Edificios'),
      ),
      const SizedBox(
        height: 8,
      ),
      TextButton(
        style: TextButton.styleFrom(
          foregroundColor: appData.darkSlateGray,
          textStyle: const TextStyle(fontSize: 20),
        ),
        onPressed: () {},
        child: const Text(' Tropas'),
      ),
      const SizedBox(
        height: 8,
      ),
      TextButton(
        style: TextButton.styleFrom(
          foregroundColor: appData.darkSlateGray,
          textStyle: const TextStyle(fontSize: 20),
        ),
        onPressed: () {},
        child: const Text(' Vehículos'),
      ),
      const SizedBox(
        height: 8,
      ),
      TextButton(
        style: TextButton.styleFrom(
          foregroundColor: appData.darkSlateGray,
          textStyle: const TextStyle(fontSize: 20),
        ),
        onPressed: () {},
        child: const Text(' Evolución'),
      ),
    ]));
  }

  Widget values(BuildContext context) {
    AppData appData = Provider.of<AppData>(context);
  }
}
