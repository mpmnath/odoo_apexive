import 'package:flutter/material.dart';

class DetailsDescriptionCard extends StatelessWidget {
  final String description;

  const DetailsDescriptionCard({
    Key? key,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      //height: 100,
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: theme.colorScheme.secondary,
        borderRadius: BorderRadius.circular(16.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Description",
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: 4.0),
          Text(
            description,
            style: theme.textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
