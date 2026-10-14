import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/models/weather_model.dart';
import 'package:weather_app/features/home/bloc/weather_states.dart';

class WeatherCubit extends Cubit<WeatherStates> {
  WeatherCubit(super.initialState);

  getWeather(value) async {
    WeatherModel weather = await getWeather(value);
  }
}
