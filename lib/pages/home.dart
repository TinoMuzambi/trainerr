import 'package:flutter/material.dart';
import 'package:trainerr/custom_button.dart';
import 'package:trainerr/utils/custom_colour.dart';
import 'package:trainerr/utils/wrapper.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CustomColour primaryColour = CustomColour(rgbColour: "0d121d");
  CustomColour accentColour = CustomColour(rgbColour: "95fe6a");

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
          ],
        )
        );
  }
}
