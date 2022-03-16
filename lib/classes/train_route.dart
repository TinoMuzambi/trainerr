import 'dart:convert';

import 'package:trainerr/classes/train_time.dart';

List<TrainRoute> postFromJson(String str) =>
    List<TrainRoute>.from(json.decode(str).map((x) => TrainRoute.fromJson(x)));

class TrainRoute {
  final String id;
  final String line;
  final String departingStation;
  final String arrivingStation;
  final List<TrainTime> times;
  final int trainNumber;

  const TrainRoute({
    required this.id,
    required this.line,
    required this.departingStation,
    required this.arrivingStation,
    required this.times,
    required this.trainNumber,
});

  factory TrainRoute.fromJson(Map<String, dynamic> json) {
    return TrainRoute(
      id: json["id"],
      line: json["line"],
      departingStation: json["departingStation"],
      arrivingStation: json["arrivingStation"],
      times: List<TrainTime>.from(json["times"].map((x) => TrainTime.fromJson(x))) ,
      trainNumber: json["trainNumber"],
    );
  }

}