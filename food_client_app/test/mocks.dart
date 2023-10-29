// We have to ignore those in order for our custom mock classes to work
// ignore_for_file: prefer_mixin

import 'package:food_client/ui/home/services/home_navigation_service.dart';
import 'package:food_client/ui/home/services/home_web_client_service.dart';
import 'package:food_client/ui/home/services/home_web_image_sizer_service.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(
  <Type>[
    HomeWebClientService,
    HomeWebImageSizerService,
    HomeNavigationService,
  ],
)
class GeneratedMocks {}
