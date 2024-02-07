import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odoo_apexive/bloc/timer/timer_bloc.dart';
import 'package:odoo_apexive/theme/palette.dart';
import 'package:odoo_apexive/view/widgets/common/custom_icon_button.dart';
import 'package:odoo_apexive/view/widgets/timer/timer_widget.dart';

class TimeScreen extends StatelessWidget {
  const TimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<TimerBloc, TimerState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: theme.colorScheme.background,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            title: Text(
              'Timesheets',
              style: theme.textTheme.headlineLarge,
            ),
            centerTitle: false,
            actions: [
              CustomIconButton(
                onPressed: () => Navigator.pushNamed(context, '/create-timer'),
                icon: Icons.add,
                iconSize: 24,
              ),
              const SizedBox(width: 16.0),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Container(
            decoration: const BoxDecoration(
              gradient: ColorPalette.lightSurface,
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 16.0,
                    ),
                    child: Text(
                      "You have ${state.timers.length} Timers",
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.timers.length,
                      shrinkWrap: true,
                      itemBuilder: (listViewContext, index) {
                        int reversedIndex = state.timers.length - index - 1;
                        return TimerWidget(
                          index: reversedIndex,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
