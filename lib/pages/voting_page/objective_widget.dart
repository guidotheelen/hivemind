import 'package:flutter/material.dart';
import 'package:hive_mind/pages/voting_page/voting_logic.dart';
import 'package:provider/provider.dart';

import '../../models/objective.dart';
import '../../constants.dart';
import 'vote_buttons.dart';

class ObjectiveWidget extends StatelessWidget {
  final Objective objective;

  const ObjectiveWidget({
    super.key,
    required this.objective,
  });

  @override
  Widget build(BuildContext context) {
    final logic = context.watch<VotingLogic>();
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
            onVoteUp: () => logic.toggleVote(objective),
            onVoteDown: () => logic.toggleVote(objective, false),
          ),
        ],
      ),
    );
  }
}
