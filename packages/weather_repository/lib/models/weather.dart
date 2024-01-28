import 'package:equatable/equatable.dart';
part 'weather_condition.dart';

class WeatherWP extends Equatable {
  final String location;
  final double temperature;
  final WeatherCondition condition;

  const WeatherWP({required this.location,required this.temperature, required this.condition});

  @override

  List<Object?> get props => [location, temperature, condition];
}
