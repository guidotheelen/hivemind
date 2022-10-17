import 'package:flutter/material.dart';
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
            icon: Pixel.eye,
          ),
          const SizedBox(height: Sizes.xl),
          ElevatedButton(onPressed: () {}, child: const Text('Objectives')),
          const SizedBox(height: Sizes.xl),
          ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, VotingPage.routeName),
              child: const Text('Voting')),
          const SizedBox(height: Sizes.xl),
          const CountdownTimer(),
          const SizedBox(height: Sizes.xl),
          const SizedBox(height: Sizes.l),
          const NavigationButtons(
            previousPage: RulesPage.routeName,
          ),
          const SizedBox(height: Sizes.l),
        ],
      ),
    );
  }
}
