import 'dart:ui';

import 'package:flutter_weather/weather/models/models.dart';
import 'package:weather_repository/weather_repository.dart';

extension WeatherConditionBasedEmoji on WeatherCondition {
  String get toEmoji {
    switch (this) {
      case WeatherCondition.clear:
        return '☀️';
      case WeatherCondition.rainy:
        return '🌧️';
      case WeatherCondition.cloudy:
        return '☁️';
      case WeatherCondition.snowy:
        return '🌨️';
      case WeatherCondition.unknown:
        return '❓';
    }
  }
}

extension TemperatureUnitsX on TemperatureUnits {

  bool get isFahrenheit => this == TemperatureUnits.fahrenheit;

  bool get isCelsius => this == TemperatureUnits.celsius;
}

extension WeatherStatusX on WeatherStatus {
  bool get isInitial => this == WeatherStatus.initial;

  bool get isLoading => this == WeatherStatus.loading;

  bool get isSuccess => this == WeatherStatus.success;

  bool get isFailure => this == WeatherStatus.failure;
}

extension TemperatureConverter on double {
  double toFahrenheit() => (this * 9 / 5) + 32;

  double toCelsius() => (this - 32) * 5 / 9;
}

extension WeatherBackgroundColor on Color {
  Color brighten([int percent = 10]) {
    assert(
      1 <= percent && percent <= 100,
      'percentage must be between 1 and 100',
    );
    final p = percent / 100;
    return Color.fromARGB(
      alpha,
      red + ((255 - red) * p).round(),
      green + ((255 - green) * p).round(),
      blue + ((255 - blue) * p).round(),
    );
  }
}

extension WeatherFormatedTemperature on Weather {
  String formattedTemperature(TemperatureUnits units) {
    return '''${temperature.value.toStringAsPrecision(2)}°${units.isCelsius ? 'C' : 'F'}''';
  }
}
