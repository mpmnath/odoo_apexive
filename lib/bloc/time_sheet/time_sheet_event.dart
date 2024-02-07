part of 'time_sheet_bloc.dart';

sealed class TimeSheetEvent extends Equatable {
  const TimeSheetEvent();

  @override
  List<Object> get props => [];
}

final class LoadTimeSheet extends TimeSheetEvent {
  final List<TimerModel> timers;

  const LoadTimeSheet({this.timers = const <TimerModel>[]});

  @override
  List<Object> get props => [timers];
}

final class CreateTimer extends TimeSheetEvent {
  final TimerModel newTimer;

  const CreateTimer({required this.newTimer});

  @override
  List<Object> get props => [newTimer];
}

class StartTimer extends TimeSheetEvent {
  final int index;
  final Duration duration;

  const StartTimer({
    required this.index,
    required this.duration,
  });
}

class PauseTimer extends TimeSheetEvent {
  final int index;

  const PauseTimer(this.index);
}

class ResetTimer extends TimeSheetEvent {
  final int index;

  const ResetTimer(this.index);
}

class UpdateTimers extends TimeSheetEvent {
  final List<TimerModel> timers;

  const UpdateTimers(this.timers);
}
