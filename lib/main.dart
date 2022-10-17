import 'package:flutter/material.dart';
import 'package:hive_mind/pages/main_page/main_page.dart';
import 'package:hive_mind/routes.dart';
import 'package:hive_mind/theme.dart';

void main() {
  runApp(const HiveMindApp());
}

class HiveMindApp extends StatelessWidget {
  const HiveMindApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hive Mind',
      home: const MainPage(),
      theme: appThemeData,
      routes: routes,
    );
  }
}
