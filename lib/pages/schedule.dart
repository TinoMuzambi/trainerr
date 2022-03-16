import 'package:flutter/material.dart';
import 'package:trainerr/classes/trainerr_api_response.dart';
import 'package:trainerr/utils/custom_colour.dart';
import 'package:trainerr/utils/wrapper.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  CustomColour accentColour = CustomColour(rgbColour: "95fe6a");

  @override
  Widget build(BuildContext context) {
    final futureResponse = ModalRoute.of(context)!.settings.arguments as Future<TrainerrApiResponse>;

    return Wrapper(appBarText: "Schedule", body: FutureBuilder<TrainerrApiResponse>(
        future: futureResponse,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: snapshot.data?.routes.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text(
                        snapshot.data!.routes[index].line,
                        style: TextStyle(
                            color: accentColour.getCustomColour()[900]
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'from: ${snapshot.data!.routes[index].departingStation}',
                        style: TextStyle(
                            color: accentColour.getCustomColour()[900]
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'to: ${snapshot.data!.routes[index].arrivingStation}',
                        style: TextStyle(
                            color: accentColour.getCustomColour()[900]
                        ),
                      ),
                    ),
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
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
                    )
                  ],
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text(
              '${snapshot.error}',
              style: TextStyle(
                  color: accentColour.getCustomColour()[900]
              ),
            );
          }

          return const Center(
              child: CircularProgressIndicator()
          );
        }));
  }
}
