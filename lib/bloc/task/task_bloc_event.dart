part of 'task_bloc_bloc.dart';

sealed class TaskBlocEvent extends Equatable {
  const TaskBlocEvent();

  @override
  List<Object> get props => [];
}

final class LoadTask extends TaskBlocEvent {
  final TaskModel task;

  const LoadTask({required this.task});

  @override
  List<Object> get props => [task];
}
