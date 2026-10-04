import 'package:flutter/material.dart';

class NoWeatherWidget extends StatelessWidget {
  const NoWeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Text(
            'There is no weather\nStart searching now',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
