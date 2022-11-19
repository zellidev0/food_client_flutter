import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/profile/profile_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_view.g.dart';

class ProfileView extends ConsumerWidget {
  const ProfileView({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    // ignore: unused_local_variable
    final ProfileModel model = ref.watch(profileControllerProvider);
    // ignore: unused_local_variable
    final ProfileController controller = ref.watch(
      profileControllerProvider.notifier,
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

@riverpod
abstract class ProfileController extends _$ProfileController {
  @override
  ProfileModel build();
}
