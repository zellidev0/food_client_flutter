import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/home/home_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_view.g.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    // ignore: unused_local_variable
    final HomeModel model = ref.watch(homeControllerProvider);

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

@riverpod
abstract class HomeController extends _$HomeController {
  @override
  HomeModel build();

  Option<bool> doSomething();
  Option<bool> doSomethingElse();
}
