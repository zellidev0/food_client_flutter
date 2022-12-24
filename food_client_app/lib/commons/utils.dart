import 'dart:math';

import 'package:flutter/cupertino.dart';

Color generateRandomPastelColor({
  required final int seed,
  required final Brightness brightness,
}) =>
    HSLColor.fromAHSL(
      1,
      360 * Random(seed).nextDouble(),
      () {
        switch (brightness) {
          case Brightness.light:
            return 0.7;
          case Brightness.dark:
            return 0.3;
        }
      }.call(),
      () {
        switch (brightness) {
          case Brightness.light:
            return 0.8;
          case Brightness.dark:
            return 0.2;
        }
      }.call(),
    ).toColor();

Exception buildException(final Object error, final StackTrace stackTrace) =>
    Exception('$error\n$stackTrace');
