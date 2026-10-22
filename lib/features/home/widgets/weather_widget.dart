import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/core/models/weather_model.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({super.key, required this.weather});
  final WeatherModel weather;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          weather.city,
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight(700)),
        ),
        const SizedBox(height: 20),
        Text(
          'Updated at: ${weather.date.hour}:${weather.date.minute}',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight(400)),
        ),
        const SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CachedNetworkImage(
              width: 80,
              height: 80,
              imageUrl: 'https:${weather.imageUrl}',
              errorWidget: (context, url, error) => Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Text(
                  'error loading image',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            // Image.network(imageUrl),
            Text(
              '${weather.temp}°C',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight(700)),
            ),
            Column(
              mainAxisAlignment: .center,
              children: [
                Text(
                  'Max temp: ${weather.maxTemp}°C',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight(400),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Min temp: ${weather.mixTemp}°C',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight(400),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 88),
        Text(
          weather.weatherStatus,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight(700)),
        ),
      ],
    );
  }
}
