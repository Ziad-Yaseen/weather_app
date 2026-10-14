import 'package:flutter/material.dart';
import 'package:weather_app/core/models/weather_model.dart';
import 'package:weather_app/core/repositories/weather_repository.dart';
import 'package:weather_app/core/services/weather_service.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  Future<WeatherModel> getWeather(String city) async {
    WeatherService service = WeatherService();
    WeatherRepository repo = WeatherRepository(service);
    return repo.fetchCurrentWeather(city);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search City')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              Navigator.pop(context);
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Text('Search'),
              suffixIcon: Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }
}
