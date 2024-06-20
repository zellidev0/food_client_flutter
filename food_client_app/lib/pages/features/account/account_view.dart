import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/pages/features/account/cubit/account_cubit.dart';
import 'package:fpdart/fpdart.dart';

class AccountView extends StatelessWidget {
  const AccountView({
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
                BlocBuilder<AccountCubit, Unit>(
                  builder: (final BuildContext builderContext, final __) =>
                      ListTile(
                    title: const Text('Ingredients Sorting'),
                    onTap: () => builderContext
                        .read<AccountCubit>()
                        .goToIngredientsSorting(),
                  ),
                ),
                const Divider(),
              ],
            ),
          ),
        ),
      );
}
