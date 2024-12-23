import 'package:flutter/material.dart';
import 'package:food_client/ui/account/account_model.dart';

class AccountView extends StatelessWidget {
  final AccountController controller;
  final AccountModel model;

  const AccountView({
    required this.controller,
    required this.model,
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

abstract class AccountController {
  void goToIngredientsSorting();
}
