part of 'timer_bloc.dart';

@immutable
sealed class TimerEvent {
  const TimerEvent();

  List<Object> get props => [];
}

class TimerStarted extends TimerEvent {
  final int timerId;
  final TimerModel timer;

  const TimerStarted({required this.timerId, required this.timer});

  @override
  List<Object> get props => [timer];
}

class TimerStopped extends TimerEvent {
  final int timerId;
  final TimerModel timer;

  const TimerStopped({required this.timerId, required this.timer});

  @override
  List<Object> get props => [timerId];
}

class TimerPaused extends TimerEvent {
  final int timerId;
  final TimerModel timer;

  const TimerPaused({required this.timerId, required this.timer});

  @override
  List<Object> get props => [timerId];
}

class TimerResumed extends TimerEvent {
  final int timerId;
  final TimerModel timer;

  const TimerResumed({required this.timerId, required this.timer});

  @override
  List<Object> get props => [timerId];
}

class _TimerTicked extends TimerEvent {
  final int timerId;
  final TimerModel timer;

  const _TimerTicked({required this.timerId, required this.timer});

  @override
  List<Object> get props => [timerId];
}
