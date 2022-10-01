import 'package:flutter/material.dart';
import 'package:overview_003/components/side_menu.dart';
import 'package:overview_003/pages/overview/overview_page.dart';
import '../constants/styles.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Expanded(
            child: SideMenu(),
          ),
          Expanded(
            flex: 5,
            child: OverviewPage(),
          ),
        ],
      )),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.icons,
    required this.press,
  }) : super(key: key);

  final String title;
  final IconData icons;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Icon(
        icons,
        color: Colors.white54,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}
