import 'package:flutter/widgets.dart';

class WeatherModel {
  final String cityName;
  final dynamic temper;
  final dynamic temperMin;
  final dynamic temperMax;
  final String iconx;
  final String country;
  final String description;

  WeatherModel(
      {required this.cityName,
      required this.temper,
      required this.iconx,
      required this.temperMax,
      required this.temperMin,
      required this.country,
      required this.description});

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    final cityName = json['name'];

    final temper = json['main']['temp'];
    final temperMin = json['main']['temp_min'];
    final temperMax = json['main']['temp_max'];

    final iconx = json['weather'][0]['icon'];
    final description = json['weather'][0]['description'];
    final country = json['sys']['country'];

    return WeatherModel(
        cityName: cityName,
        temper: temper,
        iconx: iconx,
        temperMax: temperMax,
        temperMin: temperMin,
        country: country,
        description: description);
  }
}
