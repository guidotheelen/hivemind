import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pixelarticons/pixel.dart';

import 'lined_box.dart';
import 'voting_logic.dart';
import '../../constants.dart';

class VotesLeft extends StatelessWidget {
  const VotesLeft({super.key});

  @override
  Widget build(BuildContext context) {
    final hasUpvote = context.select(
      (VotingLogic votingLogic) => votingLogic.hasUpvote,
    );
    final hasDownvote = context.select(
      (VotingLogic votingLogic) => votingLogic.hasDownvote,
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ThumbBox(
          child: Icon(
            Pixel.chevronup,
            color: AppColors.light,
          ),
        ),
        ThumbBox(
          child: Text(
            hasUpvote ? '0' : '1',
            style: const TextStyle(
              color: AppColors.light,
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(
          width: Sizes.s,
        ),
        const ThumbBox(
          child: Icon(
            Pixel.chevrondown,
            color: AppColors.light,
          ),
        ),
        ThumbBox(
          child: Text(
            hasDownvote ? '0' : '1',
            style: const TextStyle(
              color: AppColors.light,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
