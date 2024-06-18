import 'package:flutter/widgets.dart';
import 'package:food_client/cubits/features/single_recipe/single_recipe_state.dart';
import 'package:food_client/pages/features/single_recipe/widgets/single_description_widget.dart';

class DescriptionStepsTabWidget extends StatelessWidget {
  final List<SingleRecipeStateStep> steps;
  const DescriptionStepsTabWidget({
    super.key,
    required this.steps,
  });

  @override
  Widget build(BuildContext context) => ListView.separated(
        padding: const EdgeInsets.all(16).copyWith(top: 0),
        itemCount: steps.length,
        itemBuilder: (final BuildContext context, final int index) =>
            SingleDescriptionWidget(
          index: index,
          step: steps[index],
        ),
        separatorBuilder: (final BuildContext context, final int index) =>
            const SizedBox(
          height: 16,
        ),
      );
}
