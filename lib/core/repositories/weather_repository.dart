import 'package:weather_app/core/models/weather_model.dart';
import 'package:weather_app/core/services/weather_service.dart';

class WeatherRepository {
  final WeatherService service;
  WeatherRepository(this.service);

  Future<WeatherModel> fetchCurrentWeather(String city) async {
    final data = await service.getWeather(city: city);
    return WeatherModel.fromJson(data);
  }
}
