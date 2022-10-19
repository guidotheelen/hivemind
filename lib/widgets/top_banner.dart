import 'package:flutter/material.dart';
import 'package:pixelarticons/pixel.dart';

import '../constants.dart';

class TopBanner extends StatelessWidget {
  static const bannerHeight = 60.0;

  final String text;
  final bool showBackButton;

  const TopBanner({
    super.key,
    required this.text,
    this.showBackButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.medium,
      padding: const EdgeInsets.all(Sizes.s),
      height: bannerHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (showBackButton) ...[
            const SizedBox(width: Sizes.m),
            IconButton(
              icon: const Icon(Pixel.chevronleft),
              color: AppColors.light,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
          const SizedBox(width: Sizes.m),
          Text(
            text,
            style: TextStyles.titleLight,
          ),
        ],
      ),
    );
  }
}
