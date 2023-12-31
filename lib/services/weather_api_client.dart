import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather/model/weather_model.dart';

class WeatherAppClient {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=4d986795fd68ae36d9ca33056170bf9e&units=metric");

    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    // Weather weather = Weather.fromJson(body);
    print(Weather.fromJson(body).cityName);
    return Weather.fromJson(body);
  }
}
