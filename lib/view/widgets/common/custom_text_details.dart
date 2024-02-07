import 'package:flutter/material.dart';

class CustomTextDetails extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool leadingWidget;
  const CustomTextDetails({
    super.key,
    required this.title,
    required this.subTitle,
    this.leadingWidget = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.bodySmall,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            leadingWidget
                ? Container(
                    width: 2.0,
                    height: 16.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color(0xffffc629),
                    ),
                    margin: const EdgeInsets.only(right: 8.0),
                  )
                : const SizedBox(),
            Text(
              subTitle,
              style: theme.textTheme.titleMedium,
            ),
          ],
        ),
      ],
    );
  }
}
