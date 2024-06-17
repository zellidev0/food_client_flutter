import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/cubits/features/account/account_cubit.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
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
                BlocProvider<AccountCubit>(
                  create: (final BuildContext context) => AccountCubit(
                    navigationService: context.read<NavigationService>(),
                  ),
                  child: BlocBuilder<AccountCubit, Unit>(
                    builder: (final BuildContext builderContext, final __) =>
                        ListTile(
                      title: const Text('Ingredients Sorting'),
                      onTap: () => builderContext
                          .read<AccountCubit>()
                          .goToIngredientsSorting(),
                    ),
                  ),
                ),
                const Divider(),
              ],
            ),
          ),
        ),
      );
}
