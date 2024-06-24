import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:food_client/generated/locale_keys.g.dart';
import 'package:fpdart/fpdart.dart' hide State;

class AddUnitModalWidget extends StatefulWidget {
  final Function(String) createSortingUnitCallback;
  const AddUnitModalWidget({
    super.key,
    required this.createSortingUnitCallback,
  });

  @override
  State<AddUnitModalWidget> createState() => _AddUnitModalWidgetState();
}

class _AddUnitModalWidgetState extends State<AddUnitModalWidget> {
  Option<String> locationTitle = none();

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              LocaleKeys.ui_ingredients_sorting_view_dialogs_create_dialog_title
                  .tr(),
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            const Text(
              LocaleKeys
                  .ui_ingredients_sorting_view_dialogs_create_dialog_content,
            ).tr(),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                labelText: LocaleKeys
                    .ui_ingredients_sorting_view_dialogs_create_dialog_inputTitle
                    .tr(),
              ),
              onChanged: (final String value) => setState(() {
                locationTitle = value.trim().isNotEmpty ? some(value) : none();
              }),
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: locationTitle
                    .map(
                      (final String name) =>
                          () => widget.createSortingUnitCallback(name),
                    )
                    .toNullable(),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                    LocaleKeys
                        .ui_ingredients_sorting_view_dialogs_create_dialog_buttons_done,
                  ).tr(),
                ),
              ),
            ),
          ],
        ),
      );
}
