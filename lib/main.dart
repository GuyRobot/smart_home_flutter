import 'package:flutter/material.dart';
import 'package:smart_home/home_screen.dart';
import 'package:ui_common/ui_common.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return const MaterialApp(
          title: "Smart Home",
          home: HomeScreen(),
        );
      },
    );
  }
}


