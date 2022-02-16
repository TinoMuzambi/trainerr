import 'package:flutter/material.dart';
import 'package:trainerr/utils/custom_colour.dart';

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
    return Scaffold(
        backgroundColor: primaryColour.getCustomColour()[900],
        appBar: AppBar(
          title: const Text("Trainerr"),
          backgroundColor: primaryColour.getCustomColour()[800],
        ),
        body:  Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Image.asset(
                "assets/logo-slim.png",
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: Text(
                        "I'm on a train",
                        style: TextStyle(
                          color: accentColour.getCustomColour()[900],
                        ),
                      ),
                      onPressed: () {},
                    ),
                    TextButton(
                      child: Text(
                        "I'm about to get on a train",
                        style: TextStyle(
                          color: accentColour.getCustomColour()[900],
                        ),
                      ),
                      onPressed: () {},
                    ),
                    TextButton(
                      child: Text(
                        "I just want the schedule",
                        style: TextStyle(
                          color: accentColour.getCustomColour()[900],
                        ),
                      ),
                      onPressed: () {},
                    )
                  ],
                )
            )
          ],
        )
    );
  }
}
