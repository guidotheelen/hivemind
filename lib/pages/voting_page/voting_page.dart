import 'package:flutter/material.dart';
import 'package:hive_mind/pages/main_page/main_page.dart';
import 'package:hive_mind/pages/voting_page/thumbs_left.dart';
import 'package:hive_mind/widgets/top_banner.dart';
import 'package:pixelarticons/pixel.dart';

import '../../constants.dart';
import '../../widgets/navigation_buttons.dart';

class VotingPage extends StatelessWidget {
  static const routeName = '/voting';

  const VotingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TopBanner(
            text: 'VOTING',
            icon: Pixel.check,
          ),
          Expanded(
            child: Column(
              children: const [
                ThumbsLeft(),
              ],
            ),
          ),
          const SizedBox(height: Sizes.l),
          const NavigationButtons(
            previousPage: MainPage.routeName,
          ),
          const SizedBox(height: Sizes.l),
        ],
      ),
    );
  }
}
