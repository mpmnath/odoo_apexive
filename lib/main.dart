import 'package:flutter/material.dart';
import 'package:odoo_apexive/routes/routes.dart';
import 'package:odoo_apexive/theme/theme_data.dart';
import 'package:odoo_apexive/view/screens/timer_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Odoo Apexive',
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      home: const TimeScreen(),
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
