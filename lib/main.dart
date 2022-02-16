import 'package:flutter/material.dart';
import 'package:trainerr/utils/custom_colour.dart';

void main() {

  runApp(MaterialApp(
      home: Home()
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    CustomColour primaryColour = CustomColour(rgbColour: "0d121d");
    CustomColour accentColour = CustomColour(rgbColour: "95fe6a");

    return Scaffold(
      backgroundColor: primaryColour.getCustomColour(),
      appBar: AppBar(
        title: const Text("Trainerr"),
        backgroundColor: primaryColour.getCustomColour()[400],
      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            "assets/logo-slim.png",
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
