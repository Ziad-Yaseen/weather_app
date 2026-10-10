import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Luxor',
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight(700)),
        ),
        const SizedBox(height: 20),
        Text(
          'Updated at: 09:12',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight(400)),
        ),
        const SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CachedNetworkImage(
              width: 80,
              height: 80,
              imageUrl: 'image url',
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
              '12°C',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight(700)),
            ),
            Column(
              mainAxisAlignment: .center,
              children: [
                Text(
                  'Max temp: 24°C',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight(400),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Min temp: 11°C',
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
          'Rain',
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight(700)),
        ),
      ],
    );
  }
}
