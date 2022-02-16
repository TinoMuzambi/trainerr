import 'package:flutter/material.dart';
import 'package:trainerr/utils/custom_colour.dart';

class CustomButton extends StatelessWidget {
  late final String text;
  late final String route;
  CustomColour accentColour = CustomColour(rgbColour: "95fe6a");

  CustomButton({ required this.text, required this.route });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: accentColour.getCustomColour()[100],
      margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
        child: TextButton(
          child: Text(
            text,
            style: TextStyle(
              color: accentColour.getCustomColour()[900],
              letterSpacing: 1.2,

            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
