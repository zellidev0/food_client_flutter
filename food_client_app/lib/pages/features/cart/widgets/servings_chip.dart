import 'package:flutter/material.dart';

class ServingsChip extends StatelessWidget {
  final int serving;

  const ServingsChip({super.key, required this.serving});
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8),
        child: Align(
          alignment: Alignment.topRight,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              color: Colors.black.withOpacity(0.70),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Icon(Icons.group),
                  Text(serving.toString()),
                ],
              ),
            ),
          ),
        ),
      );
}
