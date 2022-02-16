import 'package:flutter/material.dart';
import 'package:trainerr/utils/wrapper.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Wrapper(appBarText: "Schedule", body: Container());
  }
}
