import 'package:flutter/material.dart';
import 'package:segment_display/segment_display.dart';

import '../constants.dart';

class CountdownTimer extends StatefulWidget {
  const CountdownTimer({super.key});

  @override
  State<CountdownTimer> createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  var timeLeft = '11:35:15';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SevenSegmentDisplay(
      value: timeLeft,
      size: Sizes.s,
      characterSpacing: Sizes.m,
      backgroundColor: AppColors.dark,
      segmentStyle: DefaultSegmentStyle(
        enabledColor: AppColors.light,
        disabledColor: AppColors.medium.withOpacity(0.2),
      ),
    );
  }
}
