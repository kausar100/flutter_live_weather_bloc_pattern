import 'package:flutter/material.dart';
import 'package:flutter_weather/weather/extension.dart';
import 'package:weather_repository/weather_repository.dart';

class WeatherIcon extends StatelessWidget {
  const WeatherIcon({required this.condition});

  static const _iconSize = 75.0;

  final WeatherCondition condition;

  @override
  Widget build(BuildContext context) {
    return Text(
      condition.toEmoji,
      style: const TextStyle(fontSize: _iconSize),
    );
  }
}