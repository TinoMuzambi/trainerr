import 'package:flutter/material.dart';
import 'package:trainerr/utils/wrapper.dart';

class Tracking extends StatefulWidget {
  const Tracking({Key? key}) : super(key: key);

  @override
  _TrackingState createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  @override
  Widget build(BuildContext context) {
    return Wrapper(appBarText: "Tracking", body: Container());
  }
}
