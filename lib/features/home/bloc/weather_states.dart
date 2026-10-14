class WeatherStates {}

class NoWeatherState extends WeatherStates {}

class WeatherLoadedState extends WeatherStates {}

class WeatherFailureState extends WeatherStates {
  String error;
  WeatherFailureState(this.error);
}

class WeatherLoadingState extends WeatherStates {}
