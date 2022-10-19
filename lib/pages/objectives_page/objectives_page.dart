import 'package:flutter/material.dart';

import '../voting_page/votes_left.dart';
import '../../widgets/top_banner.dart';
import '../../constants.dart';

class ObjectivesPage extends StatelessWidget {
  static const routeName = '/objectives';

  const ObjectivesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TopBanner(
            text: 'YOUR OBJECTIVES',
          ),
          Expanded(
            child: Column(
              children: const [
                VotesLeft(),
              ],
            ),
          ),
          const SizedBox(height: Sizes.l),
        ],
      ),
    );
  }
}
