class WeatherModel {
  final String city;
  final String date;
  final String? imageUrl;
  final String temp;
  final String maxTemp;
  final String mixTemp;
  final String weatherStatus;

  WeatherModel({
    required this.city,
    required this.date,
    required this.temp,
    required this.maxTemp,
    required this.mixTemp,
    required this.weatherStatus,
    this.imageUrl,
  });

  factory WeatherModel.fromJson() => WeatherModel(
    city: 'city',
    date: 'date',
    imageUrl: 'imageUrl',
    temp: 'temp',
    maxTemp: 'maxTemp',
    mixTemp: 'mixTemp',
    weatherStatus: 'weatherStatus',
  );
}
