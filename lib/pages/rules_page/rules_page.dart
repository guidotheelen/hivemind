import 'package:flutter/material.dart';
import 'package:hive_mind/pages/rules_page/rules_text.dart';
import 'package:hive_mind/widgets/top_banner.dart';

import '../../constants.dart';

class RulesPage extends StatelessWidget {
  static const routeName = '/rules';

  const RulesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          TopBanner(
            text: 'RULES',
          ),
          Expanded(
            child: Rules(),
          ),
          SizedBox(height: Sizes.l),
        ],
      ),
    );
  }
}
