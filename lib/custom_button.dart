import 'package:flutter/material.dart';
import 'package:trainerr/utils/custom_colour.dart';

class CustomButton extends StatelessWidget {
  late final String text;
  late final String route;
  CustomColour accentColour = CustomColour(rgbColour: "95fe6a");

  CustomButton({ required this.text, required this.route });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        text,
        style: TextStyle(
          color: accentColour.getCustomColour()[900],
          backgroundColor: accentColour.getCustomColour()[100],
        ),
      ),
      onPressed: () {},
    );
  }
}
