import 'package:flutter/material.dart';

import '../../constants.dart';
import 'objective_widget.dart';
import 'voting_logic.dart';

class MostVotes extends StatelessWidget {
  const MostVotes({
    super.key,
    required this.logic,
  });

  final VotingLogic logic;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Most votes',
          style: TextStyles.subtitleLight,
        ),
        const SizedBox(height: Sizes.l),
        logic.objectives.isNotEmpty
            ? ObjectiveWidget(objective: logic.topObjective!)
            : Container(
                alignment: Alignment.center,
                height: Sizes.xl * 2,
                width: double.infinity,
                decoration: AppDecorations.boxDecoration,
                child: const Text(
                  'No objectives yet',
                  style: TextStyles.subtitleLight,
                ),
              ),
      ],
    );
  }
}
