import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Carttext extends StatelessWidget {
  final String title;

  const Carttext({super.key, required this.title});
  @override
  Widget build(BuildContext context) => Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: AutoSizeText(
            title,
            minFontSize: 1,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      );
}
