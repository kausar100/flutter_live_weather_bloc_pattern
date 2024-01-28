class LocationOMA {
  int? id;
  String? name;
  double? latitude;
  double? longitude;

  LocationOMA({this.id, this.name, this.latitude, this.longitude});

  LocationOMA.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    return data;
  }
}
