import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odoo_apexive/bloc/new_timer/new_timer_bloc.dart';
import 'package:odoo_apexive/models/project_model.dart';
import 'package:odoo_apexive/models/task_model.dart';
import 'package:odoo_apexive/models/timer_model.dart';
import 'package:odoo_apexive/theme/palette.dart';
import 'package:odoo_apexive/utils/data.dart';
import 'package:uuid/uuid.dart';

class CreateTimerScreen extends StatefulWidget {
  const CreateTimerScreen({super.key});

  @override
  State<CreateTimerScreen> createState() => _CreateTimerScreenState();
}

class _CreateTimerScreenState extends State<CreateTimerScreen> {
  ProjectModel? _selectedProject;
  TaskModel? _selectedTask;
  final _descriptionTextController = TextEditingController();

  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Create Timer',
          style: theme.textTheme.headlineSmall,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: ColorPalette.lightSurface,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: [
                    DropdownButtonFormField(
                      icon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        size: 32,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      value: _selectedProject,
                      items: projectList.map((project) {
                        return DropdownMenuItem(
                          value: project,
                          child: Text(project.name),
                        );
                      }).toList(),
                      onChanged: (ProjectModel? project) {
                        setState(() {
                          _selectedProject = project!;
                          _selectedTask = project.tasks.isNotEmpty
                              ? project.tasks[0]
                              : null;
                        });
                      },
                      hint: Text(
                        'Project',
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    //Supporting text is disabled
                    const Text(''),
                  ],
                ),
                const SizedBox(height: 4.0),
                Column(
                  children: [
                    DropdownButtonFormField(
                      value: _selectedTask,
                      icon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        size: 32,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      items: _selectedProject?.tasks.map((task) {
                            return DropdownMenuItem(
                              value: task,
                              child: Text(task.name),
                            );
                          }).toList() ??
                          [],
                      onChanged: (value) {
                        setState(() {
                          _selectedTask = value! as TaskModel?;
                        });
                      },
                      hint: Text(
                        'Task',
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    const Text(''),
                  ],
                ),
                const SizedBox(height: 4.0),
                Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        hintText: 'Description',
                        hintStyle: theme.textTheme.bodyLarge,
                      ),
                    ),
                    //Supporting text is disabled
                    const Text(''),
                  ],
                ),
                const SizedBox(height: 4.0),
                CheckboxListTile(
                  contentPadding: EdgeInsets.zero,
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _isFavorite,
                  checkboxShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _isFavorite = value!;
                    });
                  },
                  fillColor: MaterialStateProperty.all(
                    _isFavorite ? theme.colorScheme.onSurface : null,
                  ),
                  checkColor: theme.colorScheme.surface,
                  title: Text(
                    'Mark as favourite',
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                const Spacer(),
                BlocListener<NewTimerBloc, NewTimerState>(
                  listener: (context, state) {},
                  child: FilledButton(
                    onPressed: () {
                      print('Create Timer');

                      final timerId = const Uuid().v4();
                      print("Creating new Timer Id: $timerId");
                      final newTimer = TimerModel(
                        id: context.read<NewTimerBloc>().state.timers.length,
                        description: _descriptionTextController.text,
                        isFavorite: _isFavorite,
                        isRunning: false,
                        startTime: DateTime.now(),
                        project: _selectedProject!,
                        task: _selectedTask!,
                        elapsedTime: _selectedTask!.duration,
                      );

                      context.read<NewTimerBloc>().add(
                            NewTimerCreated(
                              newTimer: newTimer,
                            ),
                          );
                      Navigator.pop(context);
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: theme.colorScheme.secondary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 14.0,
                        horizontal: 20.0,
                      ),
                    ),
                    child: const Text('Create Timer'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
