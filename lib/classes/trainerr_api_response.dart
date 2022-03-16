import 'package:trainerr/classes/train_route.dart';

class TrainerrApiResponse {
  final bool success;
  final int page;
  final List<TrainRoute> routes;
  final int pages;

  const TrainerrApiResponse(
      {required this.success,
      required this.page,
      required this.routes,
      required this.pages});

  factory TrainerrApiResponse.fromJson(Map<String, dynamic> json) {
    return TrainerrApiResponse(
        success: json["success"],
        page: json["page"],
        routes: List<TrainRoute>.from(json["routes"].map((x) => TrainRoute.fromJson(x))),
        pages: json["pages"]);
  }
}
