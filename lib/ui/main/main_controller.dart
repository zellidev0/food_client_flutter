import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/services/web_client/web_client_service.dart';
import 'package:food_client/services/web_image_sizer/web_image_sizer_service.dart';
import 'package:food_client/ui/main/main_model.dart';
import 'package:food_client/ui/main/main_navigation_service.dart';
import 'package:food_client/ui/main/main_view.dart';
import 'package:food_client/ui/single_recipe/single_recipe_model.dart';
import 'package:food_client/ui/single_recipe/single_recipe_navigation_service.dart';
import 'package:food_client/ui/single_recipe/single_recipe_view.dart';
import 'package:food_client/ui/single_recipe/single_recipe_web_client_service.dart';
import 'package:food_client/ui/single_recipe/single_recipe_web_image_sizer_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main_controller.g.dart';

@riverpod
class MainControllerImplementation extends _$MainControllerImplementation
    implements MainController {
  late final MainNavigationService _navigationService;

  @override
  MainModel build() {
    _navigationService = ref.watch(bottomNavigationBarNavigationServiceProvider);
    // _navigationService.navigateToNamed(uri: NavigationServiceUris.homeRouteUri);
    return const MainModel(bottomNavigationBarIndex: 0);
  }

  @override
  void goToCart() {
    _navigationService.navigateToNamed(uri: NavigationServiceUris.cartRouteUri);
    state = state.copyWith(bottomNavigationBarIndex: 1);
  }

  @override
  void goToHome() {
    _navigationService.navigateToNamed(uri: NavigationServiceUris.homeRouteUri);
    state = state.copyWith(bottomNavigationBarIndex: 0);
  }
}
