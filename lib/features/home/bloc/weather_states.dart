import 'package:weather_app/core/models/weather_model.dart';

class WeatherStates {}

class NoWeatherState extends WeatherStates {}

class WeatherLoadedState extends WeatherStates {
  WeatherLoadedState(this.weather);

  final WeatherModel weather;
}

class WeatherFailureState extends WeatherStates {
  WeatherFailureState(this.error);
  final String error;
}

class WeatherLoadingState extends WeatherStates {}
