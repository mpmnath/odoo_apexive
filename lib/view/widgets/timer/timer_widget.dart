import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odoo_apexive/bloc/new_timer/new_timer_bloc.dart';
import 'package:odoo_apexive/models/timer_model.dart';
import 'package:odoo_apexive/utils/utils.dart';
import 'package:odoo_apexive/view/screens/task_screen.dart';
import 'package:odoo_apexive/view/widgets/timer/timer_button.dart';
import 'package:odoo_apexive/view/widgets/timer/timer_card.dart';

class TimerWidget extends StatelessWidget {
  final int index;
  final TimerModel timer;
  const TimerWidget({
    super.key,
    required this.index,
    required this.timer,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<NewTimerBloc, NewTimerState>(
      builder: (context, state) {
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
            //height: 100,
            margin: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            decoration: BoxDecoration(
              color: theme.colorScheme.secondaryContainer,
              borderRadius: BorderRadius.circular(16.0),
            ),
            padding: const EdgeInsets.all(16.0),
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
                        icon: Icons.star_outline,
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
                        title: 'Deadline ${timer.task.deadline.formattedDate}',
                        icon: Icons.access_time_outlined,
                        textStyle: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8.0),
                ...switch (state) {
                  NewTimerInitial() => {
                      TimerButton(
                        duration: state.timers[index].elapsedTime,
                        icon: Icons.play_arrow,
                        onPressed: () {
                          context.read<NewTimerBloc>().add(
                                NewTimerStarted(index: index),
                              );
                        },
                      ),
                    },
                  NewTimerRunInProgress() => [
                      TimerButton(
                        duration: state.timer.elapsedTime,
                        icon: Icons.pause,
                        onPressed: () {
                          context.read<NewTimerBloc>().add(
                                NewTimerPaused(index: index),
                              );
                        },
                      ),
                    ],
                  NewTimerPause() => [
                      TimerButton(
                        duration: state.timers[index].elapsedTime,
                        icon: Icons.play_arrow,
                        onPressed: () {
                          context.read<NewTimerBloc>().add(
                                NewTimerResumed(index: index),
                              );
                        },
                      ),
                    ],
                  NewTimerStop() => [
                      TimerButton(
                        duration: state.timers[index].elapsedTime,
                        icon: Icons.play_arrow,
                        onPressed: () {
                          context.read<NewTimerBloc>().add(
                                NewTimerStarted(index: index),
                              );
                        },
                      ),
                    ],
                  // TODO: Handle this case.
                  NewTimerStart() => [
                      TimerButton(
                        duration: state.timers[index].elapsedTime,
                        icon: Icons.play_arrow,
                        onPressed: () {
                          context.read<NewTimerBloc>().add(
                                NewTimerStarted(index: index),
                              );
                        },
                      ),
                    ],
                  // TODO: Handle this case.
                  NewTimerResume() => [
                      TimerButton(
                        duration: state.timers[index].elapsedTime,
                        icon: Icons.pause,
                        onPressed: () {
                          context.read<NewTimerBloc>().add(
                                NewTimerPaused(index: index),
                              );
                        },
                      ),
                    ],
                  // TODO: Handle this case.
                  NewTimerLoaded() => [
                      TimerButton(
                        duration: state.timers[index].elapsedTime,
                        icon: Icons.play_arrow,
                        onPressed: () {
                          context.read<NewTimerBloc>().add(
                                NewTimerStarted(index: index),
                              );
                        },
                      ),
                    ],
                },
              ],
            ),
          ),
        );
      },
    );
  }
}



/*
...[
                  if (state is TimerInitial) 
                  context.read<TimerBloc>().add(
                            TimerStarted(timerId: timerId, timer: timer),
                          ),
                    TimerButton(
                      timer: timer,
                      duration: timer.elapsedTime,
                      icon: Icons.play_arrow,
                      onPressed: () {
                        context.read<TimerBloc>().add(
                              TimerStarted(
                                timerId: timerId,
                                timer: timer,
                              ),
                            );
                      },
                    ),
                  if (state is TimerRunInProgress)
                    TimerButton(
                      timer: state.timer,
                      duration: state.timer.elapsedTime,
                      icon: Icons.pause,
                      onPressed: () {
                        context.read<TimerBloc>().add(
                              TimerPaused(
                                timerId: timerId,
                                timer: state.timer,
                              ),
                            );
                      },
                    ),
                  if (state is TimerPause)
                    TimerButton(
                      timer: state.timer,
                      duration: state.timer.elapsedTime,
                      icon: Icons.play_arrow,
                      onPressed: () {
                        context.read<TimerBloc>().add(
                              TimerResumed(
                                timerId: timerId,
                                timer: state.timer,
                              ),
                            );
                      },
                    ),
                  TimerButton(
                    timer: timer,
                    duration: timer.elapsedTime,
                    icon: Icons.play_arrow,
                    onPressed: () {
                      context.read<TimerBloc>().add(
                            TimerStarted(
                              timerId: timerId,
                              timer: timer,
                            ),
                          );
                    },
                  ),
                ],
 */
