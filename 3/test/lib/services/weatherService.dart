import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:test/models/weatherModel.dart';

class WeatherService {
  Future<WeatherModel> getWeather(String city) async {
    //https://api.openweathermap.org/data/2.5/weather?lat=6.4550575&lon=3.3941795&appid=3bfed66eb7f133ed0a0fed437223448e

    final queryParams = {
      'q': city,
      'units': 'metric',
      'appid': '',
    };
    // final queryParams = {
    //   'lat': '6.4550575',
    //   'lon': '3.3941795',
    //   'units': 'metric',
    //   'appid': '',
    // };

    // final getUri =
    //     Uri.https('api.openweathermap.org', '/data/2.5/weather', queryParams);
    // print(getUri);

    final getUri =
        Uri.https('api.openweathermap.org', '/data/2.5/weather', queryParams);

    final response = await http.get(getUri);

    print(' api is waiting');

    print(response.body);

    final json = jsonDecode(response.body);
    return WeatherModel.fromJson(json);
  }
}
