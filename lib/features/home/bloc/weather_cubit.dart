import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/models/weather_model.dart';
import 'package:weather_app/core/repositories/weather_repository.dart';
import 'package:weather_app/features/home/bloc/weather_states.dart';

class WeatherCubit extends Cubit<WeatherStates> {
  final WeatherRepository repo;
  WeatherCubit(this.repo) : super(NoWeatherState());

  Future<void> getWeather(String value) async {
    emit(WeatherLoadingState());
    try {
      WeatherModel weather = await repo.fetchCurrentWeather(value);
      emit(WeatherLoadedState(weather));
    } catch (e) {
      emit(WeatherFailureState(e.toString()));
    }
  }
}
