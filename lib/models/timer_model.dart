import 'package:odoo_apexive/models/project_model.dart';
import 'package:odoo_apexive/models/task_model.dart';

class TimerModel {
  final int id;
  final String description;
  final bool isFavorite;
  bool isRunning;
  bool isStopped;
  Duration elapsedTime;
  DateTime startTime;
  final ProjectModel project;
  final TaskModel task;

  TimerModel({
    required this.id,
    required this.description,
    required this.isFavorite,
    required this.isRunning,
    required this.isStopped,
    required this.elapsedTime,
    required this.startTime,
    required this.project,
    required this.task,
  });

  TimerModel copyWith({
    int? id,
    String? description,
    bool? isFavorite,
    bool? isRunning,
    bool? isStopped,
    DateTime? startTime,
    DateTime? endTime,
    Duration? elapsedTime,
    ProjectModel? project,
    TaskModel? task,
  }) {
    return TimerModel(
      id: id ?? this.id,
      description: description ?? this.description,
      isFavorite: isFavorite ?? this.isFavorite,
      isRunning: isRunning ?? this.isRunning,
      isStopped: isStopped ?? this.isStopped,
      elapsedTime: elapsedTime ?? this.elapsedTime,
      startTime: startTime ?? this.startTime,
      project: project ?? this.project,
      task: task ?? this.task,
    );
  }
}
