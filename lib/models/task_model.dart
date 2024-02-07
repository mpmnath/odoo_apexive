class TaskModel {
  final String id;
  final String name;
  final DateTime deadline;
  final Duration duration;

  TaskModel({
    required this.id,
    required this.name,
    required this.deadline,
    required this.duration,
  });

  TaskModel copyWith({
    String? id,
    String? name,
    DateTime? deadline,
    Duration? duration,
  }) {
    return TaskModel(
      id: id ?? this.id,
      name: name ?? this.name,
      deadline: deadline ?? this.deadline,
      duration: duration ?? this.duration,
    );
  }
}
