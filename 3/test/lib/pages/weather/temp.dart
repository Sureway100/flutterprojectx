import 'package:flutter/material.dart';

import 'package:test/services/weatherService.dart';

import '../../widgets/navigation.dart';

void main() {
  runApp(const Temp());
}

class Temp extends StatefulWidget {
  const Temp({super.key});

  @override
  State<Temp> createState() => _TempState();
}

class _TempState extends State<Temp> {
  final _textWritten = TextEditingController();
  final _weatherData = WeatherService();

  var cityName = '-';
  var country = '-';
  var description = '-';
  var temper = 0.0;
  var temperMax = 0.0;
  var temperMin = 0.0;

  // WeatherModel? _response;

  String userPost = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Weather Report"),
        ),
        drawer: const NavDraw(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    'COUNTRY: $country',
                    style: const TextStyle(
                        fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  Text(
                    'CITY: $cityName',
                    style: const TextStyle(
                        fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    'View: $description',
                    style: const TextStyle(
                        fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Temp: $temper',
                    style: const TextStyle(
                        fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    'MAX: $temperMax',
                    style: const TextStyle(
                        fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Text(
                    'MIN: $temperMin',
                    style: const TextStyle(
                        fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: SizedBox(
                  width: 150,
                  child: TextField(
                    controller: _textWritten,
                    decoration: InputDecoration(
                      hintText: "city",
                      suffixIcon: IconButton(
                        onPressed: () {
                          // setState(() {
                          _textWritten.clear();
                          // print("called set");
                          // });
                        },
                        icon: const Icon(Icons.clear),
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: _search,
                child: const Text("Search"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _search() async {
    final response = await _weatherData.getWeather(_textWritten.text);
    // setState(() => _response = response);
    setState(() {
      cityName = response.cityName;
      country = response.country;
      description = response.description;
      temper = response.temper;
      temperMax = response.temperMax;
      temperMin = response.temperMin;
    });
    // print([
    //   response.cityName,
    //   response.temper,
    //   response.country,
    //   response.temperMax,
    //   response.temperMin,
    //   response.description,
    // ]);
  }
}
