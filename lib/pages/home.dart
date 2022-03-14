import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:trainerr/utils/custom_button.dart';
import 'package:trainerr/utils/custom_colour.dart';
import 'package:trainerr/utils/wrapper.dart';
import 'package:trainerr/classes/train_route.dart';
import 'package:http/http.dart' as http;

Future<TrainRoute> getData() async{
  final response = await http.get(Uri.parse('https://trainerr-api.vercel.app/api/routes'));

  if (response.statusCode == 200) {
    return TrainRoute.fromJson(jsonDecode(response.body));
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
  late Future<TrainRoute> futureResponse;

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
            FutureBuilder(
                future: futureResponse,
                builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!.toString());
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
            })
          ],
        )
        );
  }
}
