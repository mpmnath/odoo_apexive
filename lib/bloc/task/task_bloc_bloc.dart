import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:odoo_apexive/models/task_model.dart';

part 'task_bloc_event.dart';
part 'task_bloc_state.dart';

class TaskBlocBloc extends Bloc<TaskBlocEvent, TaskBlocState> {
  TaskBlocBloc() : super(TaskBlocInitial()) {
    on<LoadTask>(_onLoadTask);
  }

  void _onLoadTask(LoadTask event, Emitter<TaskBlocState> emit) {
    emit(TaskBlocLoaded(task: event.task));
  }
}
