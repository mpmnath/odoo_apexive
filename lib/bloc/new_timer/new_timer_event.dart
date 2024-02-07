part of 'new_timer_bloc.dart';

sealed class NewTimerEvent extends Equatable {
  const NewTimerEvent();

  @override
  List<Object> get props => [];
}

final class NewLoadTimers extends NewTimerEvent {
  final List<TimerModel> timers;

  const NewLoadTimers({this.timers = const <TimerModel>[]});

  @override
  List<Object> get props => [timers];
}

final class NewTimerCreated extends NewTimerEvent {
  final TimerModel newTimer;

  const NewTimerCreated({required this.newTimer});

  @override
  List<Object> get props => [newTimer];
}

class NewTimerStarted extends NewTimerEvent {
  final int index;

  const NewTimerStarted({required this.index});

  @override
  List<Object> get props => [index];
}

class NewTimerStopped extends NewTimerEvent {
  final int index;

  const NewTimerStopped({required this.index});

  @override
  List<Object> get props => [];
}

class NewTimerPaused extends NewTimerEvent {
  final int index;

  const NewTimerPaused({required this.index});

  @override
  List<Object> get props => [];
}

class NewTimerResumed extends NewTimerEvent {
  final int index;

  const NewTimerResumed({required this.index});

  @override
  List<Object> get props => [];
}

class _NewTimerTicked extends NewTimerEvent {
  final int index;
  final TimerModel timer;
  const _NewTimerTicked({required this.index, required this.timer});

  @override
  List<Object> get props => [];
}
