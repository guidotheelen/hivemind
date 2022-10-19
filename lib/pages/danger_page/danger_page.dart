import 'package:flutter/material.dart';
import 'package:hive_mind/pages/danger_page/danger_text.dart';
import 'package:hive_mind/pages/main_page/main_page.dart';
import 'package:hive_mind/pages/rules_page/rules_page.dart';
import 'package:hive_mind/widgets/top_banner.dart';
import 'package:pixelarticons/pixel.dart';

import '../../constants.dart';
import '../../widgets/navigation_buttons.dart';

class DangerPage extends StatelessWidget {
  static const routeName = '/danger';

  const DangerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          TopBanner(
            text: 'BEWARE',
          ),
          Expanded(
            child: DangerText(),
          ),
          SizedBox(height: Sizes.l),
        ],
      ),
    );
  }
}
