import 'package:flutter/material.dart';
import 'package:trainerr/utils/custom_colour.dart';
import 'package:trainerr/utils/wrapper.dart';

class RouteTimes extends StatefulWidget {
  const RouteTimes({Key? key}) : super(key: key);

  @override
  _RouteTimesState createState() => _RouteTimesState();
}

class _RouteTimesState extends State<RouteTimes> {
  CustomColour accentColour = CustomColour(rgbColour: "95fe6a");
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty
        ? data
        : ModalRoute.of(context)!.settings.arguments as Map;

    return Wrapper(
        appBarText: "Route Times",
        body: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              children: [
                ListTile(
                    title: Text(
                  '${data["route"].departingStation} - ${data["route"].arrivingStation}',
                  style: TextStyle(
                    color: accentColour.getCustomColour()[900],
                  ),
                )),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: data["route"].times.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                          title: Text(
                        '${data["route"].times[index].departingTime}\n${data["route"].times[index].arrivingTime}',
                        style: TextStyle(
                          color: accentColour.getCustomColour()[900],
                        ),
                      ));
                    }),
              ],
            ),
          ),
        ));
  }
}
