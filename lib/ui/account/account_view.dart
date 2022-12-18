import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/providers/providers.dart';
import 'package:food_client/ui/account/account_model.dart';

class AccountView extends ConsumerWidget {
  const AccountView({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final AccountModel model = ref.watch(providers.accountControllerProvider);
    final AccountController controller =
        ref.read(providers.accountControllerProvider.notifier);
    return Scaffold(
      body: Container(),
    );
  }
}

abstract class AccountController extends StateNotifier<AccountModel> {
  AccountController(super.state);

  void goToHome();
  void goToCart();
  void goBack();
}
