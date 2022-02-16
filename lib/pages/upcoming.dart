import 'package:flutter/material.dart';
import 'package:trainerr/utils/wrapper.dart';

class Upcoming extends StatefulWidget {
  const Upcoming({Key? key}) : super(key: key);

  @override
  _UpcomingState createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
  @override
  Widget build(BuildContext context) {
    return Wrapper(appBarText: "Upcoming", body: Container());
  }
}
