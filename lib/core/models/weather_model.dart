class WeatherModel {
  final String city;
  final String date;
  final String? imageUrl;
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
    this.imageUrl,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
    city: json['location']['name'],
    date: json['current']['last_updated'],
    imageUrl: json['current']['condition']['icon'],
    temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
    maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
    mixTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
    weatherStatus: json['current']['condition']['text'],
  );
}
