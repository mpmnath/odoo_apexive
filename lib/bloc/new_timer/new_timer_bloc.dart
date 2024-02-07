import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:odoo_apexive/models/ticker.dart';
import 'package:odoo_apexive/models/timer_model.dart';

part 'new_timer_event.dart';
part 'new_timer_state.dart';

class NewTimerBloc extends Bloc<NewTimerEvent, NewTimerState> {
  final List<Ticker> _tickers;
  List<StreamSubscription<int>> _tickerSubscriptions =
      <StreamSubscription<int>>[];
  NewTimerBloc({
    required List<Ticker> tickers,
  })  : _tickers = tickers,
        super(const NewTimerInitial(timers: <TimerModel>[])) {
    on<NewLoadTimers>(_onLoaded);
    on<NewTimerCreated>(_onCreated);
    on<NewTimerStarted>(_onStarted);
    on<NewTimerStopped>(_onStopped);
    on<NewTimerPaused>(_onPaused);
    on<NewTimerResumed>(_onResume);
    on<_NewTimerTicked>(_onTicked);
  }

  void _onLoaded(NewLoadTimers event, Emitter<NewTimerState> emit) {
    emit(NewTimerLoaded(timers: event.timers));
  }

  void _onCreated(NewTimerCreated event, Emitter<NewTimerState> emit) {
    final updatedTimers = List<TimerModel>.from(state.timers);
    updatedTimers.add(event.newTimer);
    _tickers.add(Ticker());
    emit(NewTimerLoaded(timers: updatedTimers));
  }

  void _onStarted(NewTimerStarted event, Emitter<NewTimerState> emit) {
    final updatedTimers = List<TimerModel>.from(state.timers);
    final timer = updatedTimers[event.index];

    // Check if the timer is not already running
    if (!timer.isRunning) {
      updatedTimers[event.index] = timer.copyWith(isRunning: true);

      // Emit the state to reflect that the timer is running
      emit(NewTimerRunInProgress(
        index: event.index,
        timer: timer,
      ));

      // Check if there's an existing subscription for this timer
      if (_tickerSubscriptions.length > event.index) {
        _tickerSubscriptions[event.index].cancel();
      }

      // Create a new ticker subscription for the timer
      _tickerSubscriptions.add(
        _tickers[event.index].tick(ticks: timer.task.duration.inSeconds).listen(
              (time) => add(
                _NewTimerTicked(
                  index: event.index,
                  timer: timer.copyWith(
                    elapsedTime: Duration(seconds: time),
                    startTime:
                        timer.startTime.subtract(Duration(seconds: time)),
                  ),
                ),
              ),
            ),
      );
    }
  }

  void _onStopped(NewTimerStopped event, Emitter<NewTimerState> emit) {
    final updatedTimers = List<TimerModel>.from(state.timers);
    final timer = updatedTimers[event.index];
    updatedTimers[event.index] = timer.copyWith(isRunning: false);
    _tickerSubscriptions[event.index].cancel();
    emit(NewTimerStop(index: event.index, timers: updatedTimers));
  }

  void _onPaused(NewTimerPaused event, Emitter<NewTimerState> emit) {
    final updatedTimers = List<TimerModel>.from(state.timers);
    final timer = updatedTimers[event.index];
    updatedTimers[event.index] = timer.copyWith(isRunning: false);
    _tickerSubscriptions[event.index].pause();
    emit(NewTimerPause(index: event.index, timers: updatedTimers));
  }

  void _onResume(NewTimerResumed event, Emitter<NewTimerState> emit) {
    final updatedTimers = List<TimerModel>.from(state.timers);
    final timer = updatedTimers[event.index];
    updatedTimers[event.index] = timer.copyWith(isRunning: true);
    _tickerSubscriptions[event.index].resume();
    emit(NewTimerRunInProgress(
        index: event.index, timer: updatedTimers[event.index]));
  }

  void _onTicked(_NewTimerTicked event, Emitter<NewTimerState> emit) {
    final updatedTimer = event.timer.copyWith(
      elapsedTime: Duration(seconds: event.timer.elapsedTime.inSeconds + 1),
    );
    emit(NewTimerRunInProgress(index: event.index, timer: updatedTimer));
  }

  @override
  Future<void> close() {
    for (final subscription in _tickerSubscriptions) {
      subscription.cancel();
    }
    return super.close();
  }
}
