import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/repositories/weather_repository.dart';
import 'package:weather_app/core/services/weather_service.dart';
import 'package:weather_app/features/home/bloc/weather_cubit.dart';
import 'package:weather_app/features/home/screens/home_view.dart';

class Weather extends StatelessWidget {
  const Weather({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherCubit(WeatherRepository(WeatherService())),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
