part of 'timer_bloc.dart';

@immutable
sealed class TimerState extends Equatable {
  final int timerId;
  final List<TimerModel> timers;

  const TimerState({required this.timerId, required this.timers});

  @override
  List<Object?> get props => [timers, timerId];
}

class TimerInitial extends TimerState {
  const TimerInitial({required int timerId})
      : super(timers: const [], timerId: timerId);
}

class TimerStart extends TimerState {
  const TimerStart({required int timerId, required List<TimerModel> timers})
      : super(timers: timers, timerId: timerId);
}

class TimerRunInProgress extends TimerState {
  final TimerModel timer;

  TimerRunInProgress({required this.timer, required int timerId})
      : super(timers: [timer], timerId: timerId);
}

class TimerPause extends TimerState {
  final TimerModel timer;
  TimerPause({required this.timer, required int timerId})
      : super(timers: [timer], timerId: timerId);
}

class TimerResume extends TimerState {
  final TimerModel timer;
  TimerResume({required this.timer, required int timerId})
      : super(timers: [timer], timerId: timerId);
}

class TimerStop extends TimerState {
  const TimerStop({required int timerId, required List<TimerModel> timers})
      : super(timers: timers, timerId: timerId);
}
