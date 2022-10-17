import 'package:hive_mind/pages/voting_page/voting_page.dart';

import 'pages/danger_page/danger_page.dart';
import 'pages/main_page/main_page.dart';
import 'pages/rules_page/rules_page.dart';

final routes = {
  DangerPage.routeName: (context) => const DangerPage(),
  RulesPage.routeName: (context) => const RulesPage(),
  MainPage.routeName: (context) => const MainPage(),
  VotingPage.routeName: (context) => const VotingPage(),
};
