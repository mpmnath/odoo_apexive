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
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 2.0, right: 8.0),
          child: Icon(
            icon,
            size: 16,
            color: theme.colorScheme.onSurface,
          ),
        ),
        Expanded(
          child: Text(
            title,
            style: textStyle,
          ),
        ),
      ],
    );
  }
}
