import 'package:flutter/material.dart';
import 'package:trainerr/utils/custom_colour.dart';

class CustomButton extends StatelessWidget {
  late final String text;
  late final String route;
  final CustomColour accentColour = CustomColour(rgbColour: "95fe6a");

  CustomButton({Key? key, required this.text, required this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: accentColour.getCustomColour()[100],
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(200))),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: accentColour.getCustomColour()[900],
            letterSpacing: 1.2,
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
      ),
    );
  }
}
