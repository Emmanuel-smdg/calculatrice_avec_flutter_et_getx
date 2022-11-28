import 'package:calculatrice/utils/themes.dart';
import 'package:calculatrice/views/home.ui.dart';
import 'package:calculatrice/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
    );
  }
}