import 'package:flutter/material.dart';

class ServingsChip extends StatelessWidget {
  final int serving;

  const ServingsChip({super.key, required this.serving});
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8),
        child: Align(
          alignment: Alignment.topCenter,
          child: Row(
            children: <Widget>[
              const Expanded(child: SizedBox.shrink()),
              Chip(
                label: Row(
                  children: <Widget>[
                    const Icon(Icons.group),
                    Text(serving.toString()),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
