import 'package:flutter/material.dart';
import 'package:hive_mind/pages/voting_page/available_objectives.dart';
import 'package:hive_mind/pages/voting_page/voting_logic.dart';
import 'package:provider/provider.dart';

import 'current_votes.dart';
import 'most_votes.dart';
import 'votes_left.dart';
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
                    MostVotes(logic: logic),
                    const SizedBox(height: Sizes.l),
                    CurrentVotes(logic: logic),
                    const SizedBox(height: Sizes.l),
                    AvailableObjectives(logic: logic),
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
