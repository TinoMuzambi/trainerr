import 'package:flutter/material.dart';

class CustomColour {
  final String rgbColour;

  const CustomColour({required this.rgbColour});

  MaterialColor getCustomColour() {
    final red = int.parse(rgbColour.substring(0, 2), radix: 16);
    final green = int.parse(rgbColour.substring(2, 4), radix: 16);
    final blue = int.parse(rgbColour.substring(4, 6), radix: 16);

    final shades = <int, Color>{
      50: Color.fromRGBO(red, green, blue, .1),
      100: Color.fromRGBO(red, green, blue, .2),
      200: Color.fromRGBO(red, green, blue, .3),
      300: Color.fromRGBO(red, green, blue, .4),
      400: Color.fromRGBO(red, green, blue, .5),
      500: Color.fromRGBO(red, green, blue, .6),
      600: Color.fromRGBO(red, green, blue, .7),
      700: Color.fromRGBO(red, green, blue, .8),
      800: Color.fromRGBO(red, green, blue, .9),
      900: Color.fromRGBO(red, green, blue, 1),
    };

    return MaterialColor(int.parse('0xff$rgbColour'), shades);
  }
}
