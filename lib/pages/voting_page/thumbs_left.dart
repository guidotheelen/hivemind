import 'package:flutter/material.dart';
import 'package:hive_mind/pages/voting_page/lined_box.dart';

import '../../constants.dart';

class ThumbsLeft extends StatelessWidget {
  const ThumbsLeft({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        ThumbBox(
          child: Icon(
            Icons.thumb_up,
            color: AppColors.light,
          ),
        ),
        ThumbBox(
          child: Text(
            '1',
            style: TextStyle(
              color: AppColors.light,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          width: Sizes.s,
        ),
        ThumbBox(
          child: Icon(
            Icons.thumb_down,
            color: AppColors.light,
          ),
        ),
        ThumbBox(
          child: Text(
            '1',
            style: TextStyle(
              color: AppColors.light,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
