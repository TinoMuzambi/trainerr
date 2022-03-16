import 'package:flutter/material.dart';
import 'package:trainerr/pages/home.dart';
import 'package:trainerr/pages/schedule.dart';
import 'package:trainerr/pages/tracking.dart';
import 'package:trainerr/pages/upcoming.dart';
import 'package:trainerr/pages/times.dart';

void main() {

  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => const Home(),
      "/tracking": (context) => const Tracking(),
      "/upcoming": (context) => const Upcoming(),
      "/schedule": (context) => const Schedule(),
      "/times": (context) => const RouteTimes(),
    },
  ));
}
