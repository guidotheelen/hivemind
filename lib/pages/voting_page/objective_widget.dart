import 'package:flutter/material.dart';
import 'package:hive_mind/pages/voting_page/voting_logic.dart';
import 'package:provider/provider.dart';

import '../../models/objective.dart';
import '../../constants.dart';
import 'vote_buttons.dart';

class ObjectiveWidget extends StatelessWidget {
  final Objective objective;
  final VoidCallback onVoteUp;
  final VoidCallback onVoteDown;

  const ObjectiveWidget({
    super.key,
    required this.objective,
    required this.onVoteUp,
    required this.onVoteDown,
  });

  @override
  Widget build(BuildContext context) {
    final upvote = context.select(
      (VotingLogic votingLogic) => votingLogic.upvote,
    );
    final downvote = context.select(
      (VotingLogic votingLogic) => votingLogic.downvote,
    );
    return Container(
      height: Sizes.xl * 3 + 2,
      decoration: AppDecorations.boxDecoration,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(Sizes.m),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    objective.name,
                    style: TextStyles.subtitleLight
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: Sizes.s),
                  Text(
                    objective.description,
                    style: TextStyles.bodyLight,
                  ),
                ],
              ),
            ),
          ),
          VoteButtons(
            hasUpvote: objective == upvote,
            hasDownvote: objective == downvote,
            votes: objective.upvotes - objective.downvotes,
            onVoteUp: onVoteUp,
            onVoteDown: onVoteDown,
          ),
        ],
      ),
    );
  }
}
