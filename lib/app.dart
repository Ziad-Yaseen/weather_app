import 'package:flutter/material.dart';
import 'package:weather_app/features/home/screens/home_view.dart';

class Weather extends StatelessWidget {
  const Weather({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
    );
  }
}