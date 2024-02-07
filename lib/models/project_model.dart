import 'package:odoo_apexive/models/task_model.dart';

class ProjectModel {
  final String id;
  final String name;
  final List<TaskModel> tasks;

  ProjectModel({
    required this.id,
    required this.name,
    required this.tasks,
  });
}
