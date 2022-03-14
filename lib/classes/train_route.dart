import 'dart:convert';

List<TrainRoute> postFromJson(String str) =>
    List<TrainRoute>.from(json.decode(str).map((x) => TrainRoute.fromMap(x)));

class TrainRoute {
  final String id;
  final String line;
  final String departingStation;
  final String arrivingStation;
  final List<dynamic> times;
  final int trainNumber;

  const TrainRoute({
    required this.id,
    required this.line,
    required this.departingStation,
    required this.arrivingStation,
    required this.times,
    required this.trainNumber,
});

  factory TrainRoute.fromMap(Map<String, dynamic> json) {
    return TrainRoute(
      id: json["id"],
      line: json["line"],
      departingStation: json["departingStation"],
      arrivingStation: json["arrivingStation"],
      times: json["times"],
      trainNumber: json["trainNumber"],
    );
  }

}