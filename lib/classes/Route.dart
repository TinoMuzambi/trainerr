class Route {
  final String line;
  final String departingStation;
  final String arrivingStation;
  final List<dynamic> times;
  final int trainNumber;

  const Route({
    required this.line,
    required this.departingStation,
    required this.arrivingStation,
    required this.times,
    required this.trainNumber,
});

  factory Route.fromJson(Map<String, dynamic> json) {
    return Route(
      line: json["line"],
      departingStation: json["departingStation"],
      arrivingStation: json["arrivingStation"],
      times: json["times"],
      trainNumber: json["trainNumber"],
    );
  }

}