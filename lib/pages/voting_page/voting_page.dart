import 'package:flutter/material.dart';
import 'package:hive_mind/pages/voting_page/voting_logic.dart';
import 'package:provider/provider.dart';

import 'votes_left.dart';
import 'objective_widget.dart';
import '../../widgets/countdown_timer.dart';
import '../../widgets/top_banner.dart';
import '../../constants.dart';

class VotingPage extends StatelessWidget {
  static const routeName = '/voting';

  const VotingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final logic = context.watch<VotingLogic>();

    return Scaffold(
      backgroundColor: AppColors.dark,
      body: Column(
        children: [
          const TopBanner(
            text: 'VOTING',
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(Sizes.l),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        VotesLeft(),
                        SizedBox(width: Sizes.l),
                        Expanded(
                          child: SizedBox(),
                        ),
                        SizedBox(
                          height: Sizes.xl,
                          child: FittedBox(
                            child: CountdownTimer(),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: Sizes.l),
                    const Text(
                      'Most votes',
                      style: TextStyles.subtitleLight,
                    ),
                    const SizedBox(height: Sizes.l),
                    logic.objectives.isNotEmpty
                        ? ObjectiveWidget(
                            objective: logic.mostPopularObjective!,
                            onVoteUp: () {},
                            onVoteDown: () {},
                          )
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
                    const SizedBox(height: Sizes.l),
                    const Text(
                      'Your current votes',
                      style: TextStyles.subtitleLight,
                    ),
                    const SizedBox(height: Sizes.l),
                    if (logic.hasUpvote)
                      ObjectiveWidget(
                        objective: logic.upvote!,
                        onVoteUp: () {},
                        onVoteDown: () {},
                      )
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
                      ObjectiveWidget(
                        objective: logic.downvote!,
                        onVoteUp: () {},
                        onVoteDown: () {},
                      )
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
                    const SizedBox(height: Sizes.l),
                    const Text(
                      'Available objectives',
                      style: TextStyles.subtitleLight,
                    ),
                    const SizedBox(height: Sizes.l),
                    ...[
                      for (final objective in logic.objectives) ...[
                        ObjectiveWidget(
                          objective: objective,
                          onVoteUp: () => logic.switchUpvote(objective),
                          onVoteDown: () => logic.switchDownvote(objective),
                        ),
                        const SizedBox(height: Sizes.m),
                      ]
                    ],
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: Sizes.l),
        ],
      ),
    );
  }
}
