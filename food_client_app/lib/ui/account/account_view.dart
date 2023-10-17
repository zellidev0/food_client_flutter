import 'package:flutter/material.dart';
import 'package:food_client/mvc.dart';
import 'package:food_client/ui/account/account_model.dart';

class AccountView extends MvcView<AccountController, AccountModel> {
  const AccountView({
    required super.controller,
    required super.model,
    super.key,
  });

  @override
  Widget build(final BuildContext context) => Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Preferences',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
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
        ),
      );
}

abstract class AccountController implements MvcController {
  void goToIngredientsSorting();
}
