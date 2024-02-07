part of 'task_bloc_bloc.dart';

sealed class TaskBlocState extends Equatable {
  const TaskBlocState();

  @override
  List<Object> get props => [];
}

final class TaskBlocInitial extends TaskBlocState {}

final class TaskBlocLoading extends TaskBlocState {}

final class TaskBlocLoaded extends TaskBlocState {
  final TaskModel task;

  const TaskBlocLoaded({required this.task});

  @override
  List<Object> get props => [task];
}
