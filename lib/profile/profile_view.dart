import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/profile/profile_controller.dart';
import 'package:food_client/profile/profile_model.dart';

class ProfileView extends ConsumerWidget {
  const ProfileView({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    // ignore: unused_local_variable
    final ProfileModel model = ref.watch(
      profileControllerImplementationProvider,
    );
    // ignore: unused_local_variable
    final ProfileController controller = ref.watch(
      profileControllerImplementationProvider.notifier,
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

abstract class ProfileController {}
