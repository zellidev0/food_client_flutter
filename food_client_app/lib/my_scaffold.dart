import 'package:beamer/beamer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/providers/providers.dart';
import 'package:food_client/ui/main/main_model.dart';

class MyScaffold extends ConsumerWidget {
  final Widget? bottomNavigationBar;
  final Widget body;
  const MyScaffold({
    super.key,
    required this.body,
    this.bottomNavigationBar,
  });

  @override
  Widget build(final BuildContext context, final WidgetRef ref) => Material(
        child: SelectionArea(
          child: SafeArea(
            child: Scaffold(
              bottomNavigationBar: bottomNavigationBar,
              body: body,
            ),
          ),
        ),
      );
}
