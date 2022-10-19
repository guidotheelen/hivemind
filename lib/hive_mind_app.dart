import 'package:flutter/material.dart';
import 'package:hive_mind/routes.dart';
import 'package:hive_mind/theme.dart';
import 'package:provider/provider.dart';

import 'pages/main_page/main_page.dart';
import 'pages/voting_page/voting_logic.dart';

class HiveMindApp extends StatelessWidget {
  const HiveMindApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<VotingLogic>(
          create: (_) => VotingLogic(),
        ),
      ],
      child: MaterialApp(
        title: 'Hive Mind',
        home: const MainPage(),
        theme: appThemeData,
        routes: routes,
      ),
    );
  }
}
