import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trainerr/classes/trainerr_api_response.dart';
import 'package:trainerr/utils/custom_button.dart';
import 'package:trainerr/utils/custom_colour.dart';
import 'package:trainerr/utils/wrapper.dart';
import 'package:http/http.dart' as http;

Future<TrainerrApiResponse> getData() async {
  final response = await http
      .get(Uri.parse('https://trainerr-api.vercel.app/api/routes?perPage=5'))
      .timeout(const Duration(seconds: 10));

  if (response.statusCode == 200) {
    final parsed = TrainerrApiResponse.fromJson(json.decode(response.body));
    return parsed;
  } else {
    throw const HttpException('The timetable service is unavailable.');
  }
}

class HttpException implements Exception {
  final String message;

  const HttpException(this.message);

  @override
  String toString() => message;
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

  void fetchPage() {
    futureResponse = getData();
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
            CustomButton(text: "I'm looking for the schedule", onPressed: () {
              Navigator.pushNamed(context, "/schedule", arguments: futureResponse);
            }),
          ],
        )
        );
  }
}
