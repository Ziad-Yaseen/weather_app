class WeatherModel {
  final String city;
  final String date;
  final String imageUrl;
  final double temp;
  final double maxTemp;
  final double mixTemp;
  final String weatherStatus;

  WeatherModel({
    required this.city,
    required this.date,
    required this.temp,
    required this.maxTemp,
    required this.mixTemp,
    required this.weatherStatus,
    required this.imageUrl,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
    city: json['location']['name'] ?? 'Unknown City',
    date: json['current']['last_updated'] ?? DateTime.now().toString(),
    imageUrl: json['current']['condition']['icon'] ?? 'No Image',
    temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'] ?? 0,
    maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'] ?? 0,
    mixTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'] ?? 0,
    weatherStatus: json['current']['condition']['text'] ?? 'Unknown status',
  );
}
