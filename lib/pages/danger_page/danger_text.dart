import 'package:flutter/material.dart';
import 'package:hive_mind/widgets/lined_box.dart';
import 'package:pixelarticons/pixel.dart';

import '../../constants.dart';

class DangerText extends StatelessWidget {
  const DangerText({super.key});

  @override
  Widget build(BuildContext context) {
    return LinedBox(
      content: Column(
        children: const [
          Text(
            'The Hive Mind is a dangerous place. '
            'This app is not responsible for any harm that may come to you '
            'or others while using it. Always think before you act and don\'t '
            'blindly follow the Hive Mind. You are in control of your own '
            'fate. You have been warned.\n\nGood luck.',
            style: TextStyle(
              color: AppColors.dark,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
