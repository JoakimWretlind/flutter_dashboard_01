import 'package:flutter/material.dart';
import 'package:overview_003/constants/styles.dart';
import 'package:overview_003/controllers/menu_controller.dart';
import 'package:provider/provider.dart';
import 'pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        canvasColor: secondaryColor,
      ),
      //  home: const MainScreen());
      // to handle the drawer
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          )
        ],
        child: const MainScreen(),
      ),
    );
  }
}
