import 'dart:async';

import 'package:open_meteo_api/open_meteo_api.dart';
import 'package:weather_repository/models/models.dart';

part 'weather_utils.dart';


class WeatherRepository {
  WeatherRepository({OpenMeteoApiClient? weatherApiClient})
      : _weatherApiClient = weatherApiClient ?? OpenMeteoApiClient();

  final OpenMeteoApiClient _weatherApiClient;

  Future<WeatherWP> getWeather(String city) async {
    final location = await _weatherApiClient.locationSearch(city);
    final weather = await _weatherApiClient.getWeather(
      latitude: location.latitude!,
      longitude: location.longitude!,
    );
    return WeatherWP(
      temperature: weather.temperature!,
      location: location.name!,
      condition: weather.weathercode!.toInt().toCondition,
    );
  }
}


