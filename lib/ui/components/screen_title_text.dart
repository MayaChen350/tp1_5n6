import 'package:flutter/material.dart';

class ScreenTitleText extends StatelessWidget {
  final String title;
  final double titleSize;

  const ScreenTitleText({super.key, required this.title, this.titleSize = 35});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: titleSize,
        color: Theme.of(context).colorScheme.primary,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
