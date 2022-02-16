import 'package:flutter/material.dart';
import 'package:trainerr/pages/home.dart';

void main() {

  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => Home()
    },
  ));
}
