import 'package:flutter/material.dart';

import '../../constants.dart';
import 'objective_widget.dart';
import 'voting_logic.dart';

class AvailableObjectives extends StatelessWidget {
  const AvailableObjectives({
    super.key,
    required this.logic,
  });

  final VotingLogic logic;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text(
        'Available objectives',
        style: TextStyles.subtitleLight,
      ),
      const SizedBox(height: Sizes.l),
      ...[
        for (final objective in logic.objectives) ...[
          ObjectiveWidget(objective: objective),
          const SizedBox(height: Sizes.m),
        ]
      ],
    ]);
  }
}
