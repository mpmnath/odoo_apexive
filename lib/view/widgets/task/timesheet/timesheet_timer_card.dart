import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odoo_apexive/bloc/timer/timer_bloc.dart';
import 'package:odoo_apexive/utils/utils.dart';

class TimesheetTimerCard extends StatefulWidget {
  final int index;
  const TimesheetTimerCard({
    super.key,
    required this.index,
  });

  @override
  State<TimesheetTimerCard> createState() => _TimesheetTimerCardState();
}

class _TimesheetTimerCardState extends State<TimesheetTimerCard> {
  bool isExpanded = false;
  bool _isEditDescription = false;
  final _descriptionTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<TimerBloc, TimerState>(
      builder: (context, state) {
        final timer = state.timers[widget.index];
        if (_descriptionTextController.text == "") {
          _descriptionTextController.text = timer.description;
        }
        return Container(
          width: double.infinity,
          //height: 100,
          decoration: BoxDecoration(
            color: theme.colorScheme.secondary,
            borderRadius: BorderRadius.circular(16.0),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Monday',
                        style: theme.textTheme.bodySmall,
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        timer.task.deadline.formattedDateDot,
                        style: theme.textTheme.titleMedium,
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        'Start time: 10:00',
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                  Text("08:09"),
                ],
              ),
              timer.isStopped
                  ? const SizedBox()
                  : Row(
                      children: [
                        Text(
                          formatDurationToHMS(timer.elapsedTime),
                          style: theme.textTheme.displaySmall,
                        ),
                        const Spacer(),
                        IconButton.filled(
                          style: IconButton.styleFrom(
                            backgroundColor:
                                theme.colorScheme.secondaryContainer,
                          ),
                          color: theme.colorScheme.onSurface,
                          onPressed: () {
                            context.read<TimerBloc>().add(
                                  TimerStopped(index: widget.index),
                                );
                          },
                          icon: const Icon(
                            Icons.stop,
                          ),
                        ),
                        IconButton.filled(
                          style: IconButton.styleFrom(
                            backgroundColor: timer.isRunning
                                ? theme.colorScheme.primaryContainer
                                : theme.colorScheme.secondaryContainer,
                          ),
                          color: theme.colorScheme.onSurface,
                          onPressed: () {
                            if (timer.isRunning) {
                              context.read<TimerBloc>().add(
                                    TimerPaused(index: widget.index),
                                  );
                            } else {
                              context.read<TimerBloc>().add(
                                    TimerStarted(index: widget.index),
                                  );
                            }
                          },
                          icon: Icon(
                            timer.isRunning ? Icons.pause : Icons.play_arrow,
                            color: timer.isRunning
                                ? theme.colorScheme.onPrimaryContainer
                                : theme.colorScheme.onSecondaryContainer,
                          ),
                        ),
                      ],
                    ),
              const SizedBox(height: 4.0),
              timer.description.isNotEmpty
                  ? Column(
                      children: [
                        Divider(
                          color: theme.colorScheme.outline,
                        ),
                        const SizedBox(height: 4.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Description',
                                  style: theme.textTheme.bodySmall,
                                ),
                                const Spacer(),
                                _isEditDescription
                                    ? const SizedBox()
                                    : IconButton(
                                        padding: const EdgeInsets.all(0),
                                        visualDensity: VisualDensity.compact,
                                        onPressed: () {
                                          setState(() {
                                            _isEditDescription =
                                                !_isEditDescription;
                                          });
                                        },
                                        iconSize: 18,
                                        icon: const Icon(
                                          Icons.edit,
                                        ),
                                      ),
                              ],
                            ),
                            Builder(
                              builder: (context) {
                                if (_isEditDescription) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: TextField(
                                      controller: _descriptionTextController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        hintText: 'Description',
                                        hintStyle: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
                                        suffixIcon: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              _isEditDescription =
                                                  !_isEditDescription;
                                            });
                                            context.read<TimerBloc>().add(
                                                  TimerUpdateDescription(
                                                    index: widget.index,
                                                    description:
                                                        _descriptionTextController
                                                            .text,
                                                  ),
                                                );
                                          },
                                          icon: const Icon(
                                            Icons.check,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                } else {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        timer.description,
                                        style: theme.textTheme.bodyMedium,
                                        softWrap: true,
                                        overflow: isExpanded
                                            ? null
                                            : TextOverflow.ellipsis,
                                        maxLines: isExpanded ? null : 2,
                                      ),
                                      const SizedBox(height: 2.0),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isExpanded = !isExpanded;
                                          });
                                        },
                                        child: Text(
                                          isExpanded
                                              ? 'Show less'
                                              : 'Read more',
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                    ],
                                  );
                                }
                              },
                            ),
                          ],
                        ),
                      ],
                    )
                  : const SizedBox(),
            ],
          ),
        );
      },
    );
  }
}
