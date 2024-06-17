import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/ui/main/main_controller.dart';
import 'package:food_client/ui/main/main_model.dart';
import 'package:food_client/ui/main/main_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main_providers.g.dart';

MainControllerImplementationProvider _mainController<T>(
  AutoDisposeRef<T> ref,
) =>
    mainControllerImplementationProvider(
      navigationService: ref.watch(navigationServiceProvider),
    );

@riverpod
MainController mainController(
  MainControllerRef ref,
) =>
    ref.watch(_mainController(ref).notifier);

@riverpod
MainModel mainModel(
  MainModelRef ref,
) =>
    ref.watch(_mainController(ref));
