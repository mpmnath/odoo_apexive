import 'package:flutter/material.dart';
import 'package:odoo_apexive/theme/palette.dart';
import 'package:odoo_apexive/view/widgets/custom_icon_button.dart';
import 'package:odoo_apexive/view/widgets/timer/timer_widget.dart';

class TimeScreen extends StatelessWidget {
  const TimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Timesheets',
          style: Theme.of(context).textTheme.headlineLarge,
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
                  "You have 16 Timers",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
              const TimerWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
