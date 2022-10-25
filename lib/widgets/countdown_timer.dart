import 'dart:async';

import 'package:flutter/material.dart';
import 'package:segment_display/segment_display.dart';

import '../constants.dart';

class CountdownTimer extends StatefulWidget {
  const CountdownTimer({super.key});

  @override
  State<CountdownTimer> createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  final DateTime endOfTimer = DateTime.now().add(const Duration(hours: 1));

  var timeLeft = '--:--:--';

  @override
  void initState() {
    super.initState();
    _startTimer();
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

  void _startTimer() {
    const halfSec = Duration(milliseconds: 500);
    Timer.periodic(halfSec, (timer) {
      if (DateTime.now().isAfter(endOfTimer)) {
        timer.cancel();
      } else {
        final difference = endOfTimer.difference(DateTime.now());
        setState(() {
          timeLeft = '${difference.inHours.toString().padLeft(2, '0')}:'
              '${(difference.inMinutes % 60).toString().padLeft(2, '0')}:'
              '${(difference.inSeconds % 60).toString().padLeft(2, '0')}';
        });
      }
    });
  }
}
