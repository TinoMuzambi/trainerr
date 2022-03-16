import 'package:flutter/cupertino.dart';

class RouteTimes extends StatefulWidget {
  const RouteTimes({Key? key}) : super(key: key);

  @override
  _RouteTimesState createState() => _RouteTimesState();
}

class _RouteTimesState extends State<RouteTimes> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: snapshot.data!.routes[index].times.length,
        itemBuilder: (context, index2) {
          return ListTile(
              title: Text(
                '${snapshot.data!.routes[index].times[index2].departingTime}\n${snapshot.data!.routes[index].times[index2].arrivingTime}',
                style: TextStyle(
                  color: accentColour.getCustomColour()[900],
                ),
              )
          );
        }
    );
  }
}
