part of 'time_sheet_bloc.dart';

sealed class TimeSheetState extends Equatable {
  final List<TimerModel> timers;

  const TimeSheetState({required this.timers});

  @override
  List<Object> get props => [];
}

final class TimeSheetLoading extends TimeSheetState {
  const TimeSheetLoading({required List<TimerModel> timers})
      : super(timers: timers);

  @override
  List<Object> get props => [timers];
}

final class TimeSheetLoaded extends TimeSheetState {
  @override
  final List<TimerModel> timers;

  const TimeSheetLoaded({required this.timers}) : super(timers: timers);

  @override
  List<Object> get props => [timers];
}
