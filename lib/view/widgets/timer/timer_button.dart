import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odoo_apexive/bloc/timer/timer_bloc.dart';
import 'package:odoo_apexive/models/timer_model.dart';
import 'package:odoo_apexive/utils/utils.dart';

class TimerButton extends StatelessWidget {
  const TimerButton({
    super.key,
    required this.index,
    required this.timer,
  });

  final int index;
  final TimerModel timer;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return timer.elapsedTime.inSeconds == 0
        ? const SizedBox()
        : IconButton(
            onPressed: () {
              if (timer.isRunning) {
                context.read<TimerBloc>().add(
                      TimerPaused(index: index),
                    );
              } else {
                context.read<TimerBloc>().add(
                      TimerStarted(index: index),
                    );
              }
            },
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 20.0,
            ),
            style: IconButton.styleFrom(
              backgroundColor: timer.isFavorite
                  ? theme.colorScheme.primaryContainer
                  : theme.colorScheme.secondaryContainer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(64.0),
              ),
            ),
            icon: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 44,
                  child: Text(
                    formatDurationToMS(timer.elapsedTime),
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: timer.isFavorite
                          ? theme.colorScheme.onPrimaryContainer
                          : theme.colorScheme.onSecondaryContainer,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(
                    timer.isRunning ? Icons.pause : Icons.play_arrow,
                    size: 32,
                    color: timer.isFavorite
                        ? theme.colorScheme.onPrimaryContainer
                        : theme.colorScheme.onSecondaryContainer,
                  ),
                ),
              ],
            ),
          );
  }
}
