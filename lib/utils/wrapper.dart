import 'package:flutter/material.dart';
import 'package:trainerr/utils/custom_colour.dart';

class Wrapper extends StatelessWidget {
  final CustomColour primaryColour = CustomColour(rgbColour: "0d121d");
  late final String text;
  late final Widget body;

  Wrapper({Key? key,  required this.text, required this.body }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
        backgroundColor: primaryColour.getCustomColour()[800],
      ),
      body: body
    );
  }
}
