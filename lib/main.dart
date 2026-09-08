import 'package:flutter/material.dart';
import 'package:trainerr/pages/home.dart';
import 'package:trainerr/pages/schedule.dart';
import 'package:trainerr/pages/times.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/": (context) => const Home(),
      "/schedule": (context) => const Schedule(),
      "/times": (context) => const RouteTimes(),
    },
  ));
}
