//Routes for the app

import 'package:flutter/material.dart';
import 'package:odoo_apexive/models/timer_model.dart';
import 'package:odoo_apexive/view/screens/create_timer_screen.dart';
import 'package:odoo_apexive/view/screens/task_screen.dart';
import 'package:odoo_apexive/view/screens/timer_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const TimeScreen());
      case '/create-timer':
        return MaterialPageRoute(builder: (_) => const CreateTimerScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
