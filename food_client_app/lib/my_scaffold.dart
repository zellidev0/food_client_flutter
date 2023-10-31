import 'package:flutter/material.dart';
import 'package:food_client/commons/view_state.dart';

class MyScaffold<T> extends StatelessWidget {
  final ViewState<T> state;
  final String errorText;
  final Widget Function(T) child;
  const MyScaffold({
    super.key,
    required this.state,
    required this.child,
    required this.errorText,
  });

  @override
  Widget build(final BuildContext context) => SafeArea(
        bottom: false,
        top: false,
        child: Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: state.map(
            data: (_) => child(_.data),
            error: (ViewStateError<T> error) => Center(
              child: Card(
                child: Text(errorText),
              ),
            ),
            loading: (ViewStateLoading<T> loading) => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      );
}
