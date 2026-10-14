import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/models/weather_model.dart';
import 'package:weather_app/core/repositories/weather_repository.dart';
import 'package:weather_app/core/services/weather_service.dart';
import 'package:weather_app/features/home/bloc/weather_states.dart';

class WeatherCubit extends Cubit<WeatherStates> {
  WeatherCubit() : super(NoWeatherState());

  getWeather(value) async {
    try {
      WeatherModel weather = await fetchWeather(value);
      emit(WeatherLoadedState(weather));
    } on Exception catch (e) {
      emit(WeatherFailureState(e.toString()));
    }
  }

  Future<WeatherModel> fetchWeather(String city) async {
    WeatherService service = WeatherService();
    WeatherRepository repo = WeatherRepository(service);
    return repo.fetchCurrentWeather(city);
  }
}
