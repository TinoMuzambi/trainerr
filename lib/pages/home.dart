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
        body: Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomButton(text: "I'm on a train", route: "/tracking"),
                      CustomButton(text: "I'm about to get on a train", route: "/upcoming"),
                      CustomButton(text: "I'm looking for the schedule", route: "/schedule"),
                    ],
                  ),
                )
            )
        );
  }
}
