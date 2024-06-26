// We have to ignore those in order for our custom mock classes to work
// ignore_for_file: prefer_mixin

import 'package:food_client/services/logging_service/logging_service.dart';
import 'package:food_client/ui/home/services/home_navigation_service.dart';
import 'package:food_client/ui/home/services/home_web_client_service.dart';
import 'package:food_client/ui/home/services/home_web_image_sizer_service.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_view.dart';
import 'package:food_client/ui/ingredients_sorting/services/ingredients_sorting_navigation_service.dart';
import 'package:food_client/ui/ingredients_sorting/services/ingredients_sorting_persistence_service.dart';
import 'package:food_client/ui/ingredients_sorting/services/ingredients_sorting_web_client_service.dart';
import 'package:food_client/ui/ingredients_sorting/services/ingredients_sorting_web_image_sizer_service.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(
  <Type>[
    IngredientsSortingController,
    IngredientsSortingWebClientService,
    IngredientsSortingNavigationService,
    IngredientsSortingWebImageSizerService,
    IngredientsSortingPersistenceService,
    HomeWebClientService,
    HomeWebImageSizerService,
    HomeNavigationService,
    LoggingService,
  ],
)
class GeneratedMocks {}
