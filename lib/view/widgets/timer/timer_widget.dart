import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odoo_apexive/bloc/timer/timer_bloc.dart';
import 'package:odoo_apexive/utils/utils.dart';
import 'package:odoo_apexive/view/screens/task/task_screen.dart';
import 'package:odoo_apexive/view/widgets/timer/timer_button.dart';
import 'package:odoo_apexive/view/widgets/timer/timer_card.dart';

class TimerWidget extends StatelessWidget {
  final int index;
  const TimerWidget({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<TimerBloc, TimerState>(
      builder: (context, state) {
        final timer = state.timers[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return TaskScreen(
                    index: index,
                  );
                },
              ),
            );
          },
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            decoration: BoxDecoration(
              color: theme.colorScheme.secondaryContainer,
              borderRadius: BorderRadius.circular(16.0),
            ),
            padding: const EdgeInsets.all(16.0),
            child: IntrinsicHeight(
              child: Row(
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
                          title: timer.task.name,
                          icon: timer.isFavorite
                              ? Icons.star
                              : Icons.star_outline,
                          textStyle: theme.textTheme.titleMedium,
                        ),
                        const SizedBox(height: 2.0),
                        TimerCard(
                          title: timer.project.name,
                          icon: Icons.work_outline_outlined,
                          textStyle: theme.textTheme.bodyMedium,
                        ),
                        const SizedBox(height: 2.0),
                        TimerCard(
                          title:
                              'Deadline ${timer.task.deadline.formattedDateSlash}',
                          icon: Icons.access_time_outlined,
                          textStyle: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  TimerButton(
                    index: index,
                    timer: timer,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
