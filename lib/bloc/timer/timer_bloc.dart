import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:odoo_apexive/models/ticker.dart';
import 'package:odoo_apexive/models/timer_model.dart';

part 'timer_event.dart';
part 'timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  final Ticker _ticker;
  final int _timerId;
  StreamSubscription<int>? _tickerSubscription;

  TimerBloc({
    required Ticker ticker,
    required int timerId,
  })  : _ticker = ticker,
        _timerId = timerId,
        super(TimerInitial(timerId: timerId)) {
    on<TimerStarted>(_onStarted);
    on<TimerStopped>(_onStopped);
    on<TimerPaused>(_onPaused);
    on<_TimerTicked>(_onTicked);
    on<TimerResumed>(_onResume);
  }
  void _onStarted(TimerStarted event, Emitter<TimerState> emit) {
    emit(TimerRunInProgress(timerId: _timerId, timer: event.timer));

    _tickerSubscription?.cancel();
    _tickerSubscription =
        _ticker.tick(ticks: event.timer.task.duration.inSeconds).listen(
              (time) => add(
                _TimerTicked(
                  timerId: _timerId,
                  timer: event.timer.copyWith(
                    elapsedTime: Duration(seconds: time),
                    startTime:
                        event.timer.startTime.subtract(Duration(seconds: time)),
                  ),
                ),
              ),
            );
  }

  void _onStopped(TimerStopped event, Emitter<TimerState> emit) {
    if (event.timerId == _timerId) {
      final updatedTimer = event.timer.copyWith(isRunning: false);
      emit(TimerStop(timerId: _timerId, timers: [updatedTimer]));
      _tickerSubscription?.cancel();
    }
  }

  void _onPaused(TimerPaused event, Emitter<TimerState> emit) {
    if (event.timerId == _timerId) {
      final updatedTimer = event.timer.copyWith(isRunning: false);
      _tickerSubscription?.pause();
      emit(TimerPause(timerId: _timerId, timer: updatedTimer));
    }
  }

  void _onResume(TimerResumed event, Emitter<TimerState> emit) {
    if (event.timerId == _timerId) {
      final updatedTimer = event.timer.copyWith(isRunning: true);
      _tickerSubscription?.resume();
      emit(TimerRunInProgress(timerId: _timerId, timer: updatedTimer));
    }
  }

  void _onTicked(_TimerTicked event, Emitter<TimerState> emit) {
    if (event.timerId == _timerId) {
      emit(TimerRunInProgress(timerId: _timerId, timer: event.timer));
    }
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }
}
