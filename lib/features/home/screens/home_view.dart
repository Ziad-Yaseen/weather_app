import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/home/bloc/weather_cubit.dart';
import 'package:weather_app/features/home/bloc/weather_states.dart';
import 'package:weather_app/features/home/widgets/no_weather_widget.dart';
import 'package:weather_app/features/home/widgets/weather_widget.dart';
import 'package:weather_app/features/search/screens/search_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
        child: BlocBuilder<WeatherCubit, WeatherStates>(
          builder: (context, state) {
            if (state is WeatherFailureState) return Text(state.error);
            if (state is WeatherLoadedState) {
              return WeatherWidget(weather: state.weather);
            }
            if (state is WeatherLoadingState) {
              return const CircularProgressIndicator();
            }
            return const NoWeatherWidget();
          },
        ),
      ),
    );
  }
}
