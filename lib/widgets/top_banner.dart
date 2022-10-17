import 'package:flutter/material.dart';

import '../constants.dart';

class TopBanner extends StatelessWidget {
  static const bannerHeight = 70.0;

  final String text;
  final IconData icon;

  const TopBanner({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.s),
      height: bannerHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: Sizes.m),
          Text(
            text,
            style: TextStyles.titleLight,
          ),
          const SizedBox(width: Sizes.m),
          Icon(
            icon,
            color: AppColors.light,
          ),
          const Expanded(child: SizedBox()),
          const Icon(
            Icons.menu,
            color: AppColors.light,
          ),
          const SizedBox(width: Sizes.m),
        ],
      ),
    );
  }
}
