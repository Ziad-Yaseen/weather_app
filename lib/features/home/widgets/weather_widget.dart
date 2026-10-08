import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({
    super.key,
    required this.city,
    required this.time,
    required this.imageUrl,
    required this.averageTemp,
    required this.maxTemp,
    required this.minTemp,
    required this.weather,
  });
  final String city;
  final String time;
  final String imageUrl;
  final String averageTemp;
  final String maxTemp;
  final String minTemp;
  final String weather;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          city,
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight(700)),
        ),
        const SizedBox(height: 20),
        Text(
          'Updated at $time',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight(400)),
        ),
        const SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CachedNetworkImage(
              width: 80,
              height: 80,
              imageUrl: imageUrl,
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
              '$averageTemp C',
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight(700)),
            ),
            Column(
              mainAxisAlignment: .center,
              children: [
                Text(
                  'Max temp: $maxTemp',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight(400),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Min temp: $minTemp',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight(400),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 88),
        Text(
          weather,
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight(700)),
        ),
      ],
    );
  }
}
