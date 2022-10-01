import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/logo.png"),
          ),
          DrawerListTile(
            title: "Overview",
            icons: Icons.dashboard,
            press: () {},
          ),
          DrawerListTile(
            title: "Users",
            icons: Icons.person,
            press: () {},
          ),
          DrawerListTile(
            title: "Measurements",
            icons: Icons.straighten,
            press: () {},
          ),
          DrawerListTile(
            title: 'Shorts',
            icons: Icons.videocam,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
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
