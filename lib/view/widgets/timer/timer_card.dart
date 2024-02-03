import 'package:flutter/material.dart';

class TimerCard extends StatelessWidget {
  const TimerCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.textStyle,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 16,
          color: Theme.of(context).colorScheme.onSurface,
        ),
        const SizedBox(width: 8.0),
        Text(
          title,
          style: textStyle,
        ),
      ],
    );
  }
}
