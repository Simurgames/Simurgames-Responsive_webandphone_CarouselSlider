import 'dart:ui';

import 'package:flutter/cupertino.dart';

class PaddingConstants{
  static PaddingConstants instance = PaddingConstants._init();

  final HardLowPad=EdgeInsets.all(8.0);
  final VeryLowPad= EdgeInsets.all(12.0);
  final LowPad= EdgeInsets.all(24.0);
  final LowMediumPad= EdgeInsets.all(36.0);
  final MediumPad= EdgeInsets.all(48.0);
  final BigPad= EdgeInsets.all(56.0);




  PaddingConstants._init();
}