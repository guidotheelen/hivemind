import 'package:flutter/material.dart';
import 'package:hive_mind/pages/rules_page/rule.dart';
import 'package:pixelarticons/pixel.dart';

import '../../constants.dart';
import '../../widgets/lined_box.dart';

class Rules extends StatelessWidget {
  const Rules({super.key});

  @override
  Widget build(BuildContext context) {
    return LinedBox(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Rule(
            icon: Icons.thumb_up,
            title: 'Rule 1',
            text: 'You may vote for one option you like.',
          ),
          SizedBox(height: Sizes.xl),
          Rule(
            icon: Icons.thumb_down,
            title: 'Rule 2',
            text: 'You may vote for one option you don\'t like.',
          ),
          SizedBox(height: Sizes.xl),
          Rule(
            icon: Pixel.clock,
            title: 'Rule 3',
            text: 'If you voted for an option, you must fullfil the objective '
                'with the most votes when the clock hits zero.',
          ),
        ],
      ),
    );
  }
}
