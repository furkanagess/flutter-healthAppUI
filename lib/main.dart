import 'package:flutter/material.dart';
import 'package:health_app_ui/core/page/health_food_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: HealthyFoodView(),
    );
  }
}
