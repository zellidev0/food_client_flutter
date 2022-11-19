import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/home/home_controller.dart';
import 'package:food_client/home/home_model.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    // ignore: unused_local_variable
    final HomeModel model = ref.watch(
      homeControllerImplementationProvider,
    );
    // ignore: unused_local_variable
    final HomeController controller = ref.watch(
      homeControllerImplementationProvider.notifier,
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

abstract class HomeController {}
