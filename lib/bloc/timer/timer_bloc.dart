import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:odoo_apexive/utils/ticker.dart';
import 'package:odoo_apexive/models/timer_model.dart';

part 'timer_event.dart';
part 'timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  final Ticker _ticker;
  StreamSubscription<int>? _tickerSubscription;

  TimerBloc({
    required Ticker ticker,
  })  : _ticker = ticker,
        super(const TimerLoaded(timers: <TimerModel>[])) {
    on<LoadTimers>(_onLoaded);
    on<TimerCreated>(_onCreated);
    on<TimerStarted>(_onStarted);
    on<TimerStopped>(_onStopped);
    on<TimerPaused>(_onPaused);
    on<TimerRemoved>(_onRemoved);
    on<TimerUpdateDescription>(_onUpdateDescription);
    on<_TimerTicked>(_onTicked);
  }

  void _onLoaded(LoadTimers event, Emitter<TimerState> emit) {
    emit(TimerLoaded(timers: event.timers));
  }

  void _onCreated(TimerCreated event, Emitter<TimerState> emit) {
    final updatedTimers = List<TimerModel>.from(state.timers);
    updatedTimers.add(event.timer);
    emit(TimerLoaded(timers: updatedTimers));
  }

  void _onStarted(TimerStarted event, Emitter<TimerState> emit) {
    final updatedTimers = List<TimerModel>.from(state.timers);
    TimerModel timer = updatedTimers[event.index];

    // Check if the timer is not already running
    if (!timer.isRunning) {
      timer = timer.copyWith(isRunning: true);

      // Cancel the existing subscription only if it's associated with the timer being started
      if (_tickerSubscription != null && !_tickerSubscription!.isPaused) {
        _tickerSubscription?.cancel();
      }

      // Create a ticker subscription for the timer
      _tickerSubscription =
          _ticker.tick(ticks: timer.elapsedTime.inSeconds).listen(
                (duration) => add(
                  _TimerTicked(
                    index: event.index,
                    timer: timer.copyWith(
                      elapsedTime: Duration(seconds: duration),
                    ),
                  ),
                ),
              );

      // Emit the state to reflect that the timer is running
      emit(TimerLoaded(timers: updatedTimers));
    }
  }

  void _onStopped(TimerStopped event, Emitter<TimerState> emit) {
    final updatedTimers = List<TimerModel>.from(state.timers);
    final timer = updatedTimers[event.index];
    updatedTimers[event.index] = timer.copyWith(
      isRunning: false,
      isStopped: true,
      elapsedTime: const Duration(seconds: 0),
    );
    _tickerSubscription?.cancel();
    emit(TimerLoaded(timers: updatedTimers));
  }

  void _onPaused(TimerPaused event, Emitter<TimerState> emit) {
    final updatedTimers = List<TimerModel>.from(state.timers);
    final timer = updatedTimers[event.index];
    updatedTimers[event.index] = timer.copyWith(isRunning: false);
    if (_tickerSubscription != null) {
      _tickerSubscription?.pause();
    }
    emit(TimerLoaded(timers: updatedTimers));
  }

  void _onRemoved(TimerRemoved event, Emitter<TimerState> emit) {
    final updatedTimers = List<TimerModel>.from(state.timers);
    updatedTimers.removeAt(event.index);
    emit(TimerLoaded(timers: updatedTimers));
  }

  void _onUpdateDescription(
      TimerUpdateDescription event, Emitter<TimerState> emit) {
    final updatedTimers = List<TimerModel>.from(state.timers);
    final timer = updatedTimers[event.index];
    updatedTimers[event.index] = timer.copyWith(description: event.description);
    emit(TimerLoaded(timers: updatedTimers));
  }

  void _onTicked(_TimerTicked event, Emitter<TimerState> emit) {
    final updatedTimers = List<TimerModel>.from(state.timers);
    updatedTimers[event.index] = event.timer;
    emit(TimerLoaded(timers: updatedTimers));
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }
}
