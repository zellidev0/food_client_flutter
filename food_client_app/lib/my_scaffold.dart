import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
