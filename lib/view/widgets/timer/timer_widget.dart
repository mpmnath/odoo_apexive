import 'package:flutter/material.dart';
import 'package:odoo_apexive/utils/utils.dart';
import 'package:odoo_apexive/view/widgets/timer/timer_card.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(16.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: const Color(0xffffc629),
            ),
            margin: const EdgeInsets.only(right: 12.0),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TimerCard(
                  title: 'iOS app development',
                  icon: Icons.star_outline,
                  textStyle: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 2.0),
                TimerCard(
                  title: 'SO056 - Booqio V2',
                  icon: Icons.work_outline_outlined,
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 2.0),
                TimerCard(
                  title: 'Deadline ${DateTime.now().formattedDate}',
                  icon: Icons.access_time_outlined,
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
            style: ButtonStyle(
              //backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
              backgroundColor: MaterialStateProperty.all(
                  Theme.of(context).colorScheme.secondary),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(64.0),
                ),
              ),
            ),
            icon: Row(
              children: [
                Text(
                  "00:30",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.pause_outlined,
                    size: 32,
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
