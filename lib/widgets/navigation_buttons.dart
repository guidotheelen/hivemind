import 'package:flutter/material.dart';
import 'package:pixelarticons/pixel.dart';

class NavigationButtons extends StatelessWidget {
  final String? previousPage;
  final String? nextPage;

  const NavigationButtons({
    super.key,
    this.previousPage,
    this.nextPage,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: [
        if (previousPage != null)
          ElevatedButton(
            child: const Text('Go back'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        if (nextPage != null)
          ElevatedButton(
            child: const Text('I understand'),
            onPressed: () {
              Navigator.pushNamed(context, nextPage!);
            },
          ),
      ],
    );
  }
}
