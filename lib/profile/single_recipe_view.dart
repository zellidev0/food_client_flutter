import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/profile/single_recipe_controller.dart';
import 'package:food_client/profile/single_recipe_model.dart';

class SingleRecipeView extends ConsumerWidget {
  const SingleRecipeView({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    // ignore: unused_local_variable
    final SingleRecipeModel model = ref.watch(
      singleRecipeControllerImplementationProvider,
    );
    // ignore: unused_local_variable
    final SingleRecipeController controller = ref.watch(
      singleRecipeControllerImplementationProvider.notifier,
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Example')),
        body: const Center(
          child: Text('value'),
        ),
      ),
    );
  }
}

abstract class SingleRecipeController {}
