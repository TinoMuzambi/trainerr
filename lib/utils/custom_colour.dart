import 'package:flutter/material.dart';

class CustomColour {
  late String rgbColour;
  late int R;
  late int G;
  late int B;
  late Map<int, Color> shades;

  CustomColour({ required this.rgbColour });

  void hexToRGB() {
    R = int.parse(rgbColour.substring(0, 2), radix: 16);
    G = int.parse(rgbColour.substring(2, 4), radix: 16);
    B = int.parse(rgbColour.substring(4, 6), radix: 16);

    shades = {
      50:  Color.fromRGBO(R, G, B, .1),
      100:  Color.fromRGBO(R, G, B, .2),
      200:  Color.fromRGBO(R, G, B, .3),
      300:  Color.fromRGBO(R, G, B, .4),
      400:  Color.fromRGBO(R, G, B, .5),
      500:  Color.fromRGBO(R, G, B, .6),
      600:  Color.fromRGBO(R, G, B, .7),
      700:  Color.fromRGBO(R, G, B, .8),
      800:  Color.fromRGBO(R, G, B, .9),
      900:  Color.fromRGBO(R, G, B, 1),
    };
  }

  MaterialColor getCustomColour() {
    hexToRGB();
    String hex = "0xff$R$G$B";
    int hexNum = int.parse(hex);
    return MaterialColor(hexNum, shades);
  }
}