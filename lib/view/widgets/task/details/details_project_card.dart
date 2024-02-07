import 'package:flutter/material.dart';
import 'package:odoo_apexive/utils/utils.dart';
import 'package:odoo_apexive/view/widgets/common/custom_text_details.dart';

class DetailsProjectCard extends StatelessWidget {
  const DetailsProjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: theme.colorScheme.secondary,
        borderRadius: BorderRadius.circular(16.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const CustomTextDetails(
            title: 'Project',
            subTitle: 'Get to know Apexer - Ivan',
            leadingWidget: true,
          ),
          const SizedBox(height: 16.0),
          CustomTextDetails(
            title: 'Deadline',
            subTitle: DateTime.now().formattedDateSlash,
          ),
          const SizedBox(height: 16.0),
          const CustomTextDetails(
            title: 'Assinged To',
            subTitle: 'Ivan Zhuikov',
          ),
        ],
      ),
    );
  }
}
