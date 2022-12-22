import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/providers/providers.dart';
import 'package:food_client/ui/account/account_model.dart';

class AccountView extends ConsumerWidget {
  const AccountView({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    // ignore: unused_local_variable
    final AccountModel model = ref.watch(providers.accountControllerProvider);
    final AccountController controller =
        ref.read(providers.accountControllerProvider.notifier);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Preferences', style: Theme.of(context).textTheme.headline6),
            const SizedBox(height: 16),
            const Divider(),
            ListTile(
              title: const Text('Ingredients Sorting'),
              onTap: controller.goToIngredientsSorting,
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}

abstract class AccountController extends StateNotifier<AccountModel> {
  AccountController(super.state);

  void goToIngredientsSorting();
}
