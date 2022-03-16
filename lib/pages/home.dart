import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:trainerr/classes/trainerr_api_response.dart';
import 'package:trainerr/utils/custom_button.dart';
import 'package:trainerr/utils/custom_colour.dart';
import 'package:trainerr/utils/wrapper.dart';
import 'package:http/http.dart' as http;

Future<TrainerrApiResponse> getData() async {
  final response = await http.get(Uri.parse('https://trainerr-api.vercel.app/api/routes?perPage=1'));

  if (response.statusCode == 200) {
    final parsed = TrainerrApiResponse.fromJson(json.decode(response.body));
    return parsed;
  } else {
    throw Exception("Failed to load data");
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CustomColour primaryColour = CustomColour(rgbColour: "0d121d");
  CustomColour accentColour = CustomColour(rgbColour: "95fe6a");
  late Future<TrainerrApiResponse> futureResponse;

  void fetchPage() async {
    print("here");

    futureResponse = getData();

    print("done");
    print(futureResponse);
  }

  @override
  void initState() {
    super.initState();

    fetchPage();
  }

  @override
  Widget build(BuildContext context) {
    return Wrapper(
        appBarText: "Trainerr",
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomButton(text: "I'm on a train", onPressed: () {
              Navigator.pushNamed(context, "/tracking");
            }),
            CustomButton(text: "I'm about to get on a train", onPressed: () {
              Navigator.pushNamed(context, "/upcoming");
            }),
            CustomButton(text: "I'm looking for the schedule", onPressed: () {
              Navigator.pushNamed(context, "/schedule");
            }),
            FutureBuilder<TrainerrApiResponse>(
                future: futureResponse,
                builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(
                    snapshot.data!.pages.toString(),
                    style: TextStyle(
                        color: accentColour.getCustomColour()[700]
                    ),
                  );
                } else if (snapshot.hasError) {
                  print(snapshot.error);
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
            })
          ],
        )
        );
  }
}
