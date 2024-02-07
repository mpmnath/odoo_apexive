part of 'timer_bloc.dart';

sealed class TimerEvent extends Equatable {
  const TimerEvent();

  @override
  List<Object> get props => [];
}

final class LoadTimers extends TimerEvent {
  final List<TimerModel> timers;

  const LoadTimers({this.timers = const <TimerModel>[]});

  @override
  List<Object> get props => [timers];
}

final class TimerCreated extends TimerEvent {
  final TimerModel timer;

  const TimerCreated({required this.timer});

  @override
  List<Object> get props => [Timer];
}

class TimerStarted extends TimerEvent {
  final int index;

  const TimerStarted({required this.index});

  @override
  List<Object> get props => [index];
}

class TimerStopped extends TimerEvent {
  final int index;

  const TimerStopped({required this.index});

  @override
  List<Object> get props => [];
}

class TimerPaused extends TimerEvent {
  final int index;

  const TimerPaused({required this.index});

  @override
  List<Object> get props => [];
}

class TimerRemoved extends TimerEvent {
  final int index;

  const TimerRemoved({required this.index});

  @override
  List<Object> get props => [];
}

class TimerUpdateDescription extends TimerEvent {
  final int index;
  final String description;

  const TimerUpdateDescription(
      {required this.index, required this.description});

  @override
  List<Object> get props => [index, description];
}

class _TimerTicked extends TimerEvent {
  final int index;
  final TimerModel timer;
  const _TimerTicked({required this.index, required this.timer});

  @override
  List<Object> get props => [];
}
