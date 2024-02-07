part of 'timer_bloc.dart';

sealed class TimerState extends Equatable {
  final List<TimerModel> timers;

  const TimerState({required this.timers});

  @override
  List<Object> get props => [];
}

final class TimerLoading extends TimerState {
  const TimerLoading({required List<TimerModel> timers})
      : super(timers: timers);

  @override
  List<Object> get props => [timers];
}

final class TimerLoaded extends TimerState {
  @override
  final List<TimerModel> timers;

  const TimerLoaded({required this.timers}) : super(timers: timers);

  @override
  List<Object> get props => [timers];
}
