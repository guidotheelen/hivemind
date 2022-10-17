import 'package:flutter/material.dart';

import '../constants.dart';

class LinedBox extends StatelessWidget {
  final Widget content;

  const LinedBox({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.l),
      child: Container(
        padding: const EdgeInsets.all(Sizes.s),
        color: AppColors.light,
        child: Container(
            padding: const EdgeInsets.all(Sizes.xl),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.dark),
              color: AppColors.light,
            ),
            child: content),
      ),
    );
  }
}
