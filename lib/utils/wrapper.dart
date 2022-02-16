import 'package:flutter/material.dart';
import 'package:trainerr/utils/custom_colour.dart';

class Wrapper extends StatelessWidget {
  Wrapper({Key? key}) : super(key: key);

  final CustomColour primaryColour = CustomColour(rgbColour: "0d121d");
  late final String text;
  late final Widget body;

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
