import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odoo_apexive/bloc/new_timer/new_timer_bloc.dart';
import 'package:odoo_apexive/theme/palette.dart';
import 'package:odoo_apexive/view/widgets/custom_icon_button.dart';
import 'package:odoo_apexive/view/widgets/timer/timer_widget.dart';

class TimeScreen extends StatelessWidget {
  const TimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<NewTimerBloc, NewTimerState>(
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
                        //final TimerModel timer = state.timers[index];
                        //print("Timer: ${timer.id}");
                        print('Timers Length: ${state.timers.length}');
                        return TimerWidget(
                          index: index,
                          timer: state.timers[index],
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

/*
BlocProvider<TimerBloc>(
  create: (context) => TimerBloc(
    ticker: const Ticker(),
    timerId: timer.id,
  ),
  child: TimerWidget(
    timerId: state.timers[index].id,
    timer: timer,
  ),
);
 */