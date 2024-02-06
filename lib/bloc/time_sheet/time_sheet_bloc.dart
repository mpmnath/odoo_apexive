import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:odoo_apexive/models/timer_model.dart';

part 'time_sheet_event.dart';
part 'time_sheet_state.dart';

class TimeSheetBloc extends Bloc<TimeSheetEvent, TimeSheetState> {
  TimeSheetBloc() : super(const TimeSheetLoading(timers: <TimerModel>[])) {
    on<LoadTimeSheet>(_onLoadTimers);
    on<CreateTimer>(_onCreateTimer);
  }

  void _onLoadTimers(LoadTimeSheet event, Emitter<TimeSheetState> emit) {
    emit(TimeSheetLoaded(
      timers: event.timers,
    ));
  }

  void _onCreateTimer(CreateTimer event, Emitter<TimeSheetState> emit) {
    final updatedTimers = List<TimerModel>.from(state.timers);
    updatedTimers.add(event.newTimer);
    emit(TimeSheetLoaded(timers: updatedTimers));
  }
}
