import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odoo_apexive/bloc/new_timer/new_timer_bloc.dart';
import 'package:odoo_apexive/models/timer_model.dart';
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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<NewTimerBloc, NewTimerState>(
      builder: (context, state) {
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Monday',
                    style: theme.textTheme.bodySmall,
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    state.timers[widget.index].task.name,
                    style: theme.textTheme.titleMedium,
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    'Start time: ${state.timers[widget.index].startTime.formattedDate}',
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
              Row(
                children: [
                  state is NewTimerRunInProgress
                      ? Text(
                          formatDuration(
                              state.timers[widget.index].elapsedTime),
                          style: theme.textTheme.displaySmall,
                        )
                      : Text(
                          formatDuration(
                              state.timers[widget.index].elapsedTime),
                          style: theme.textTheme.displaySmall,
                        ),
                  const Spacer(),
                  IconButton.filled(
                    style: IconButton.styleFrom(
                      backgroundColor: theme.colorScheme.secondaryContainer,
                    ),
                    color: theme.colorScheme.onSurface,
                    onPressed: () {
                      context.read<NewTimerBloc>().add(
                            NewTimerStopped(index: widget.index),
                          );
                    },
                    icon: const Icon(
                      Icons.stop,
                    ),
                  ),
                  if (state is NewTimerRunInProgress)
                    IconButton.filled(
                      style: IconButton.styleFrom(
                        backgroundColor: theme.colorScheme.secondaryContainer,
                      ),
                      color: theme.colorScheme.onSurface,
                      onPressed: () {
                        context.read<NewTimerBloc>().add(
                              NewTimerPaused(index: widget.index),
                            );
                      },
                      icon: const Icon(
                        Icons.pause,
                      ),
                    ),
                  if (state is NewTimerPause)
                    IconButton.filled(
                      style: IconButton.styleFrom(
                        backgroundColor: theme.colorScheme.secondaryContainer,
                      ),
                      color: theme.colorScheme.onSurface,
                      onPressed: () {
                        context.read<NewTimerBloc>().add(
                              NewTimerResumed(index: widget.index),
                            );
                      },
                      icon: const Icon(
                        Icons.play_arrow,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 4.0),
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
                                  _isEditDescription = !_isEditDescription;
                                });
                              },
                              iconSize: 18,
                              icon: const Icon(
                                Icons.edit,
                              ),
                            ),
                    ],
                  ),
                  Builder(builder: (context) {
                    if (_isEditDescription) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            hintText: 'Description',
                            hintStyle: Theme.of(context).textTheme.bodyLarge,
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isEditDescription = !_isEditDescription;
                                });
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sync with Client, communicate, work on the new design with designer, new tasks preparation call with the front end',
                            style: theme.textTheme.bodyMedium,
                            softWrap: true,
                            overflow: isExpanded ? null : TextOverflow.ellipsis,
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
                              isExpanded ? 'Show less' : 'Read more',
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      );
                    }
                  }),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
