import 'package:flutter/material.dart';

import '../../constants.dart';

class Rule extends StatelessWidget {
  final String title;
  final String text;
  final IconData icon;

  const Rule({
    super.key,
    required this.title,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: Sizes.l),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: Sizes.s),
              Text(
                text,
                style: const TextStyle(
                  color: AppColors.dark,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
