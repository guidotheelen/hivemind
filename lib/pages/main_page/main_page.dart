import 'package:flutter/material.dart';
import 'package:hive_mind/pages/danger_page/danger_page.dart';
import 'package:hive_mind/pages/voting_page/voting_page.dart';
import 'package:hive_mind/widgets/navigation_buttons.dart';
import 'package:pixelarticons/pixel.dart';

import '../../constants.dart';
import '../../widgets/countdown_timer.dart';
import '../../widgets/top_banner.dart';
import '../rules_page/rules_page.dart';

class MainPage extends StatelessWidget {
  static const routeName = '/main';

  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TopBanner(
            text: 'HIVE MIND',
            showBackButton: false,
          ),
          const SizedBox(height: Sizes.xl),
          ElevatedButton(
              onPressed: () {}, child: const Text('Your objectives')),
          const SizedBox(height: Sizes.xl),
          ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, VotingPage.routeName),
              child: const Text('Voting')),
          const SizedBox(height: Sizes.xl),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, RulesPage.routeName),
            child: const Text('Rules'),
          ),
          const SizedBox(height: Sizes.xl),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, DangerPage.routeName),
            child: const Text('Disclaimer'),
          ),
          const SizedBox(height: Sizes.xl),
          const Expanded(child: SizedBox()),
          const FittedBox(
            child: Padding(
              padding: EdgeInsets.all(Sizes.xl),
              child: CountdownTimer(),
            ),
          ),
        ],
      ),
    );
  }
}
