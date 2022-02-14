import 'package:flutter/material.dart';

void main() {

  runApp(MaterialApp(
      home: Home()
  ));
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Map<int, Color> primaryColorShades = {
      50: const Color.fromRGBO(13, 18, 29, .1),
      100: const Color.fromRGBO(13, 18, 29, .2),
      200: const Color.fromRGBO(13, 18, 29, .3),
      300: const Color.fromRGBO(13, 18, 29, .4),
      400: const Color.fromRGBO(13, 18, 29, .5),
      500: const Color.fromRGBO(13, 18, 29, .6),
      600: const Color.fromRGBO(13, 18, 29, .7),
      700: const Color.fromRGBO(13, 18, 29, .8),
      800: const Color.fromRGBO(13, 18, 29, .9),
      900: const Color.fromRGBO(13, 18, 29, 1),
    };Map<int, Color> accentColorShades = {
      50: const Color.fromRGBO(149, 254, 106, .1),
      100: const Color.fromRGBO(149, 254, 106, .2),
      200: const Color.fromRGBO(149, 254, 106, .3),
      300: const Color.fromRGBO(149, 254, 106, .4),
      400: const Color.fromRGBO(149, 254, 106, .5),
      500: const Color.fromRGBO(149, 254, 106, .6),
      600: const Color.fromRGBO(149, 254, 106, .7),
      700: const Color.fromRGBO(149, 254, 106, .8),
      800: const Color.fromRGBO(149, 254, 106, .9),
      900: const Color.fromRGBO(149, 254, 106, 1),
    };
    MaterialColor primaryColour = MaterialColor(0xff0d121d, primaryColorShades);
    MaterialColor accentColour = MaterialColor(0xff95fe6a, accentColorShades);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Trainerr"),
        backgroundColor: primaryColour[900],
      ),
      body:  Container(
        color: primaryColour,
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo-slim.png",
              height: 200,
              width: 100,
            ),
            TextButton(
              child: Text(
                  "I'm on a train",
                style: TextStyle(
                  color: accentColour,
                ),
              ),
              onPressed: () {},
            ),
            TextButton(
              child: Text(
                "I'm about to get on a train",
                style: TextStyle(
                  color: accentColour,
                ),
              ),
              onPressed: () {},
            ),
            TextButton(
              child: Text(
                "I just want the schedule",
                style: TextStyle(
                  color: accentColour,
                ),
              ),
              onPressed: () {},
            )
          ],
        ),
      )
    );
  }
}
