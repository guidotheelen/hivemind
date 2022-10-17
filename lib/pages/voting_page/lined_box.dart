import 'package:flutter/material.dart';

import '../../constants.dart';

class ThumbBox extends StatelessWidget {
  final Widget child;
  final double side;

  const ThumbBox({
    super.key,
    required this.child,
    this.side = Sizes.xl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: side,
      width: side,
      alignment: Alignment.center,
      decoration: AppDecorations.boxDecoration,
      child: child,
    );
  }
}
