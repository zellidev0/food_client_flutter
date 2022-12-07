import 'dart:math';

import 'package:flutter/cupertino.dart';

Color generateRandomPastelColor({
  required final int seed,
}) =>
    HSLColor.fromAHSL(1, 360 * Random(seed).nextDouble(), 0.7, 0.8).toColor();
