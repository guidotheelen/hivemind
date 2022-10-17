import 'package:flutter/material.dart';

import '../constants.dart';

class TopBanner extends StatelessWidget {
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
      padding: const EdgeInsets.all(8),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              color: AppColors.light,
              fontSize: 20,
            ),
          ),
          const SizedBox(width: Sizes.s),
          Icon(
            icon,
            color: AppColors.light,
          ),
        ],
      ),
    );
  }
}
