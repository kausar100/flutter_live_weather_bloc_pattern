class WeatherOMA {
  double? temperature;
  int? weathercode;

  WeatherOMA({this.temperature, this.weathercode});

  WeatherOMA.fromJson(Map<String, dynamic> json) {
    temperature = json['temperature'];
    weathercode = json['weathercode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['temperature'] = temperature;
    data['weathercode'] = weathercode;
    return data;
  }
}
