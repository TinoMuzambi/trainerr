class TrainTime {
  final String departingTime;
  final String arrivingTime;

  const TrainTime({
    required this.arrivingTime,
    required this.departingTime
});

  factory TrainTime.fromJson(Map<String, dynamic> json) {
    return TrainTime(
      departingTime: json["departingTime"],
      arrivingTime: json["arrivingTime"]
    );
  }
}