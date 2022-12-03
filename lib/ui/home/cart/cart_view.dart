import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/ui/home/cart/cart_controller.dart';
import 'package:food_client/ui/home/cart/cart_model.dart';
import 'package:food_client/ui/main/main_controller.dart';
import 'package:food_client/ui/main/main_model.dart';

class CartView extends ConsumerWidget {
  const CartView({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final CartModel model = ref.watch(
      cartControllerImplementationProvider,
    );
    final CartController controller = ref.read(
      cartControllerImplementationProvider.notifier,
    );
    return Scaffold(
      body: Container(),
    );
  }
}

abstract class CartController {
  void goToHome();
  void goToCart();
  void goBack();
}
