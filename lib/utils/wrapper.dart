import 'package:flutter/material.dart';
import 'package:trainerr/utils/custom_colour.dart';

class Wrapper extends StatelessWidget {
  final CustomColour primaryColour = CustomColour(rgbColour: "0d121d");
  late final String appBarText;
  late final Widget body;

  Wrapper({Key? key,  required this.appBarText, required this.body }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarText),
        backgroundColor: primaryColour.getCustomColour()[800],
      ),
      body: body
    );
  }
}
