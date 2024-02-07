part of 'new_timer_bloc.dart';

sealed class NewTimerState extends Equatable {
  final List<TimerModel> timers;

  const NewTimerState({required this.timers});

  @override
  List<Object> get props => [];
}

final class NewTimerInitial extends NewTimerState {
  const NewTimerInitial({required List<TimerModel> timers})
      : super(timers: timers);

  @override
  List<Object> get props => [timers];
}

final class NewTimerLoaded extends NewTimerState {
  @override
  final List<TimerModel> timers;

  const NewTimerLoaded({required this.timers}) : super(timers: timers);

  @override
  List<Object> get props => [timers];
}

class NewTimerStart extends NewTimerState {
  final int index;
  final List<TimerModel> timers;
  const NewTimerStart({required this.index, required this.timers})
      : super(timers: timers);
}

class NewTimerRunInProgress extends NewTimerState {
  final int index;
  final TimerModel timer;
  NewTimerRunInProgress({required this.index, required this.timer})
      : super(timers: [timer]);
}

class NewTimerPause extends NewTimerState {
  final int index;
  final List<TimerModel> timers;
  const NewTimerPause({required this.index, required this.timers})
      : super(timers: timers);
}

class NewTimerResume extends NewTimerState {
  final int index;
  final List<TimerModel> timers;
  const NewTimerResume({required this.index, required this.timers})
      : super(timers: timers);
}

class NewTimerStop extends NewTimerState {
  final int index;
  final List<TimerModel> timers;
  const NewTimerStop({required this.index, required this.timers})
      : super(timers: timers);
}
