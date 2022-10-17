import 'package:flutter/material.dart';
import 'package:hive_mind/pages/danger_page/danger_page.dart';
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
      home: const DangerPage(),
      theme: appThemeData,
      routes: routes,
    );
  }
}
