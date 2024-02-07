import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odoo_apexive/bloc/timer/timer_bloc.dart';

class DetailsDescriptionCard extends StatelessWidget {
  final int index;
  const DetailsDescriptionCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<TimerBloc, TimerState>(builder: (context, state) {
      return state.timers[index].description.isEmpty
          ? const SizedBox()
          : Container(
              width: double.infinity,
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: theme.colorScheme.secondary,
                borderRadius: BorderRadius.circular(16.0),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    state.timers[index].description,
                    style: theme.textTheme.titleSmall,
                  ),
                ],
              ),
            );
    });
  }
}
