import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search City')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: TextField(
            onSubmitted: (value) {},
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Text('Search'),
              suffixIcon: Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }
}
