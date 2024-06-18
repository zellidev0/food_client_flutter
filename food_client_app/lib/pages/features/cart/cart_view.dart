import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/cubits/features/cart/cart_cubit.dart';
import 'package:food_client/cubits/features/cart/cart_state.dart';
import 'package:food_client/generated/locale_keys.g.dart';
import 'package:food_client/pages/common/view_state.dart';
import 'package:food_client/pages/features/cart/widgets/recipe_list_sliver.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: Padding(
            padding: const EdgeInsets.only(top: 32),
            child: BlocBuilder<CartCubit, CartState>(
              buildWhen: (CartState previous, CartState current) =>
                  previous.data.runtimeType != current.data.runtimeType,
              builder: (final BuildContext context, final CartState state) =>
                  state.data.map(
                data: (ViewStateData<CartStateData> data) =>
                    const DefaultTabController(
                  length: 3,
                  child: RecipeListSliver(),
                ),
                error: (_) => Center(
                  child: Card(
                    child: Text(
                      LocaleKeys.ui_cart_view_error_states_general_error.tr(),
                    ),
                  ),
                ),
                loading: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          ),
        ),
      );
}
