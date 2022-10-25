import 'package:flutter/material.dart';

import '../../constants.dart';
import 'objective_widget.dart';
import 'voting_logic.dart';

class CurrentVotes extends StatelessWidget {
  const CurrentVotes({
    super.key,
    required this.logic,
  });

  final VotingLogic logic;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text(
        'Your current votes',
        style: TextStyles.subtitleLight,
      ),
      const SizedBox(height: Sizes.l),
      if (logic.hasUpvote)
        ObjectiveWidget(objective: logic.upvote!)
      else
        Container(
          alignment: Alignment.center,
          height: Sizes.xl * 3 + 2,
          width: double.infinity,
          decoration: AppDecorations.boxDecoration,
          child: const Text(
            'No upvote selected',
            style: TextStyles.subtitleLight,
          ),
        ),
      const SizedBox(height: Sizes.m),
      if (logic.hasDownvote)
        ObjectiveWidget(objective: logic.downvote!)
      else
        Container(
          alignment: Alignment.center,
          height: Sizes.xl * 3 + 2,
          width: double.infinity,
          decoration: AppDecorations.boxDecoration,
          child: const Text(
            'No downvote selected',
            style: TextStyles.subtitleLight,
          ),
        ),
    ]);
  }
}
