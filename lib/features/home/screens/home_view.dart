import 'package:flutter/material.dart';
import 'package:weather_app/core/models/weather_model.dart';
import 'package:weather_app/features/home/widgets/no_weather_widget.dart';
import 'package:weather_app/features/home/widgets/weather_widget.dart';
import 'package:weather_app/features/search/screens/search_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, this.weather});
  final WeatherModel? weather;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Weather', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const SearchView()),
              );
            },
            icon: const Icon(Icons.search, color: Colors.white),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Center(
        child: weather == null
            ? const NoWeatherWidget()
            : WeatherWidget(weather: weather!),
      ),
    );
  }
}
