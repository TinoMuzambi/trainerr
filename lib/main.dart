import 'package:flutter/material.dart';
import 'package:trainerr/pages/home.dart';
import 'package:trainerr/pages/schedule.dart';
import 'package:trainerr/pages/tracking.dart';
import 'package:trainerr/pages/upcoming.dart';

void main() {

  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => Home(),
      "/tracking": (context) => Tracking(),
      "/upcoming": (context) => Upcoming(),
      "/schedule": (context) => Schedule()
    },
  ));
}
