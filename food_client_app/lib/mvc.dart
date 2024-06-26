import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

abstract class MvcController {}

abstract class MvcView<C extends MvcController, M> extends StatefulWidget {
  final C controller;
  final M model;

  const MvcView({
    required this.controller,
    required this.model,
    super.key,
  });

  Widget build(final BuildContext context);

  @override
  State<StatefulWidget> createState() => _MvcViewState<C, M>();

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<C>('controller', controller))
      ..add(DiagnosticsProperty<M>('model', model));
  }
}

class _MvcViewState<C extends MvcController, M> extends State<MvcView<C, M>> {
  @override
  Widget build(final BuildContext context) => widget.build(context);

  @override
  void initState() {
    super.initState();
  }
}
