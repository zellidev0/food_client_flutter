import 'package:food_client/profile/single_recipe_model.dart';
import 'package:food_client/profile/single_recipe_view.dart';
import 'package:food_client/services/recipe_parser/recipe_parser_service.dart';
import 'package:food_client/services/web_client/web_client_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'single_recipe_controller.g.dart';

@riverpod
class SingleRecipeControllerImplementation
    extends _$SingleRecipeControllerImplementation
    implements SingleRecipeController {
  // ignore: unused_field
  late final SingleRecipeRecipeParserService _recipeParserService;
  // ignore: unused_field
  late final SingleRecipeWebClientService _webClientService;

  @override
  SingleRecipeModel build() {
    _recipeParserService = ref.watch(recipeParserServiceProvider);
    _webClientService = ref.watch(webClientServiceProvider);
    return SingleRecipeModel(
      recipe: Right<Exception, Option<SingleRecipeModelRecipe>>(
        some(
          SingleRecipeModelRecipe(
            id: 'id',
            displayedAttributes: const SingleRecipeModelDisplayedAttributes(
              name: 'Tomatige Rigatoni mit Rinderhackfleisch',
              headline: 'getoppt mit frischen Kräutern und Käseraspeln',
              description:
                  ''''One pot', 'one pan', 'one tray' gehören alle in die Kategorie „einfacher geht's nicht“. Schmeiß alles in einen Topf, eine Pfanne oder auf ein Blech und schon erledigt sein Dein Essen fast von selbst. Mit Bonus: Du musst kaum was abwaschen und Deine Mahlzeit steht meist schnell auf dem Tisch.''',
              descriptionMarkdown:
                  ''''One pot', 'one pan', 'one tray' gehören alle in die Kategorie „einfacher geht's nicht“. Schmeiß alles in einen Topf, eine Pfanne oder auf ein Blech und schon erledigt sein Dein Essen fast von selbst. Mit Bonus: Du musst kaum was abwaschen und Deine Mahlzeit steht meist schnell auf dem Tisch.''',
            ),
            difficulty: 1,
            yields: <SingleRecipeModelYield>[
              SingleRecipeModelYield(
                yield: 2,
                ingredients: <SingleRecipeModelIngredient>[
                  SingleRecipeModelIngredient(
                    id: '1',
                    slug: 'Rigatoni',
                    displayedName: 'Rigatoni',
                    amount: some(270),
                    unit: some('g'),
                    imageUrl: none(),
                  ),
                  SingleRecipeModelIngredient(
                    id: '2',
                    slug: 'Rinderhackfleisch',
                    displayedName: 'Rinderhackfleisch',
                    amount: some(200),
                    unit: some('g'),
                    imageUrl: none(),
                  ),
                  SingleRecipeModelIngredient(
                    id: '3',
                    slug: 'Tomatenpesto',
                    displayedName: 'Tomatenpesto',
                    amount: some(25),
                    unit: some('g'),
                    imageUrl: none(),
                  ),
                  SingleRecipeModelIngredient(
                    id: '4',
                    slug: 'Hartkäse geraspelt',
                    displayedName: 'Hartkäse geraspelt',
                    amount: some(20),
                    unit: some('g'),
                    imageUrl: none(),
                  ),
                ],
              ),
              SingleRecipeModelYield(
                yield: 4,
                ingredients: <SingleRecipeModelIngredient>[
                  SingleRecipeModelIngredient(
                    id: '1',
                    slug: 'Rigatoni',
                    displayedName: 'Rigatoni',
                    amount: some(270),
                    unit: some('g'),
                    imageUrl: none(),
                  ),
                  SingleRecipeModelIngredient(
                    id: '2',
                    slug: 'Rinderhackfleisch',
                    displayedName: 'Rinderhackfleisch',
                    amount: some(200),
                    unit: some('g'),
                    imageUrl: none(),
                  ),
                  SingleRecipeModelIngredient(
                    id: '3',
                    slug: 'Tomatenpesto',
                    displayedName: 'Tomatenpesto',
                    amount: some(25),
                    unit: some('g'),
                    imageUrl: none(),
                  ),
                  SingleRecipeModelIngredient(
                    id: '4',
                    slug: 'Hartkäse geraspelt',
                    displayedName: 'Hartkäse geraspelt',
                    amount: some(20),
                    unit: some('g'),
                    imageUrl: none(),
                  ),
                ],
              ),
            ],
            tags: <SingleRecipeModelTag>[],
            imageUriLarge: none(),
            steps: <SingleRecipeModelStep>[
              SingleRecipeModelStep(
                instructionMarkdown: r'''Chiliflocken (Achtung: scharf!) und geriebenen Hartkäse zu den Gnocchi in die Pfanne geben, gut vermengen und einmal aufkochen lassen. Mit Salz\* und Pfeffer\* abschmecken.''',
                imageUrl: some(Uri.parse('https://d3hvwccx09j84u.cloudfront.net/0,0/632c3d7c683f4229430e351b/step-3f8a4e7d.jpg')),
              ),
              SingleRecipeModelStep(
                instructionMarkdown: r'''Chiliflocken (Achtung: scharf!) und geriebenen Hartkäse zu den Gnocchi in die Pfanne geben, gut vermengen und einmal aufkochen lassen. Mit Salz\* und Pfeffer\* abschmecken.''',
                imageUrl: some(Uri.parse('https://d3hvwccx09j84u.cloudfront.net/0,0/632c3d7c683f4229430e351b/step-3f8a4e7d.jpg')),
              ),
              SingleRecipeModelStep(
                instructionMarkdown: r'''Chiliflocken (Achtung: scharf!) und geriebenen Hartkäse zu den Gnocchi in die Pfanne geben, gut vermengen und einmal aufkochen lassen. Mit Salz\* und Pfeffer\* abschmecken.''',
                imageUrl: some(Uri.parse('https://d3hvwccx09j84u.cloudfront.net/0,0/632c3d7c683f4229430e351b/step-3f8a4e7d.jpg')),
              ),
              SingleRecipeModelStep(
                instructionMarkdown: r'''Chiliflocken (Achtung: scharf!) und geriebenen Hartkäse zu den Gnocchi in die Pfanne geben, gut vermengen und einmal aufkochen lassen. Mit Salz\* und Pfeffer\* abschmecken.''',
                imageUrl: some(Uri.parse('https://d3hvwccx09j84u.cloudfront.net/0,0/632c3d7c683f4229430e351b/step-3f8a4e7d.jpg')),
              ),
              SingleRecipeModelStep(
                instructionMarkdown: r'''Chiliflocken (Achtung: scharf!) und geriebenen Hartkäse zu den Gnocchi in die Pfanne geben, gut vermengen und einmal aufkochen lassen. Mit Salz\* und Pfeffer\* abschmecken.''',
                imageUrl: some(Uri.parse('https://d3hvwccx09j84u.cloudfront.net/0,0/632c3d7c683f4229430e351b/step-3f8a4e7d.jpg')),
              ),
            ],
          ),
        ),
      ),
      selectedYield: 2,
    );
  }

  @override
  void setSelectedYield({required final int yield}) {
    state = state.copyWith(selectedYield: yield);
  }
}

abstract class SingleRecipeRecipeParserService {}

abstract class SingleRecipeWebClientService {}
