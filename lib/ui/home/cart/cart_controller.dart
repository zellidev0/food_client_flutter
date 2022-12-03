
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/ui/home/cart/cart_model.dart';
import 'package:food_client/ui/home/cart/cart_navigation_service.dart';
import 'package:food_client/ui/home/cart/cart_view.dart';
import 'package:food_client/ui/main/main_model.dart';
import 'package:food_client/ui/main/main_navigation_service.dart';
import 'package:food_client/ui/main/main_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_controller.g.dart';

@riverpod
class CartControllerImplementation extends _$CartControllerImplementation
    implements CartController {
  late final CartNavigationService _navigationService;

  @override
  CartModel build() {
    _navigationService = ref.watch(bottomNavigationBarNavigationServiceProvider);
    return const CartModel(bottomNavigationBarIndex: 0);
  }

  @override
  void goBack() {
    // TODO: implement goBack
  }

  @override
  void goToCart() {
    // TODO: implement goToCart
  }

  @override
  void goToHome() {
    // TODO: implement goToHome
  }

}
