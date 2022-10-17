import 'package:flutter/material.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(Sizes.xl),
          child: FittedBox(
            child: Text(
              timeLeft,
              style: const TextStyle(
                fontSize: 30,
                color: AppColors.dark,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
