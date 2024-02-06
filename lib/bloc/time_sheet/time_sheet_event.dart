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
