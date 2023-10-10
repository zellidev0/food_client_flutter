// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';

void disableEasyLocalizationLogging() {
  // ignore: always_specify_types
  EasyLocalization.logger.enableLevels = [];
}

Future<void> initWidgetTest({
  required final WidgetTester widgetTester,
  final double width = 1000,
  final double height = 1000,
  final double ratio = 1,
}) async {
  widgetTester.binding.window.physicalSizeTestValue = Size(width, height);
  widgetTester.binding.window.devicePixelRatioTestValue = ratio;
  addTearDown(widgetTester.binding.window.clearPhysicalSizeTestValue);
  addTearDown(widgetTester.binding.window.clearDevicePixelRatioTestValue);

  disableEasyLocalizationLogging();

  SharedPreferences.setMockInitialValues(<String, Object>{});

  await widgetTester.runAsync(
    () async => await EasyLocalization.ensureInitialized(),
  );
}
