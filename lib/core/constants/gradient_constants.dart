import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorGradientConstants{
  static ColorGradientConstants instance = ColorGradientConstants._init();

  final BlueGradient = LinearGradient(begin: Alignment.topLeft, end: Alignment(3, 0.0), colors: [Color(0xb30ba7ff),Color(0x330ba7ff)]);
  final BlueStrokeGradient = LinearGradient(begin: Alignment.topLeft, end: Alignment(3, 0.0), colors: [Color(0xff04C3FF),Color(0x4c3ff),Color(0xff04C3FF)]);
  final PurpleGradient = LinearGradient(begin: Alignment.topLeft, end: Alignment(3, 0.0),
      colors: [Color(0xff88058b),Color(0xff27014e),Color(0xff3d015b)]
  );


  ColorGradientConstants._init();
}