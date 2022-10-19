import 'package:flutter/material.dart';
import 'package:pixelarticons/pixel.dart';

import '../../constants.dart';

class VoteButtons extends StatelessWidget {
  final int votes;
  final bool hasUpvote;
  final bool hasDownvote;
  final VoidCallback onVoteUp;
  final VoidCallback onVoteDown;

  const VoteButtons({
    super.key,
    required this.onVoteUp,
    required this.onVoteDown,
    this.hasUpvote = false,
    this.hasDownvote = false,
    this.votes = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Sizes.xl,
      decoration: AppDecorations.boxDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: onVoteUp,
            style: ButtonStyle(
              backgroundColor: hasUpvote
                  ? MaterialStateProperty.all(AppColors.medium)
                  : MaterialStateProperty.all(AppColors.dark),
            ),
            child: const SizedBox(
              width: Sizes.xl,
              height: Sizes.xl,
              child: Icon(
                Pixel.chevronup,
                color: AppColors.light,
              ),
            ),
          ),
          Container(
            width: Sizes.xl,
            height: Sizes.xl,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: AppColors.light),
                bottom: BorderSide(color: AppColors.light),
              ),
            ),
            alignment: Alignment.center,
            child: FittedBox(
              child: Text(
                votes.toString(),
                style: TextStyles.subtitleLight,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: onVoteDown,
            style: ButtonStyle(
              backgroundColor: hasDownvote
                  ? MaterialStateProperty.all(AppColors.medium)
                  : MaterialStateProperty.all(AppColors.dark),
            ),
            child: const SizedBox(
              width: Sizes.xl,
              height: Sizes.xl,
              child: Icon(
                Pixel.chevrondown,
                color: AppColors.light,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
