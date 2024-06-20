part of 'home_cubit.dart';

const int widthPixels = 600;
const int recipesPerPage = 16;

List<String> _selectedFilterIds({
  required final List<HomeStateFilter> type,
}) =>
    _selectedFilters(filters: type)
        .map((final HomeStateFilter filter) => filter.id)
        .toList();

List<HomeStateFilter> _selectedFilters({
  required final List<HomeStateFilter> filters,
}) =>
    filters
        .filter((final HomeStateFilter filter) => filter.isSelected)
        .toList();

List<HomeStateRecipe> _mapToHomeStateRecipes({
  required final List<HomeWebClientModelRecipe> recipes,
  required final HomeWebImageSizerService imageResizerService,
  required final LoggingService logger,
}) =>
    recipes
        .map(
          (final HomeWebClientModelRecipe recipe) => recipe.imagePath
              .flatMap(
                (final Uri imagePath) => _getImageUrlFromImagePath(
                  imageResizerService: imageResizerService,
                  imagePath: imagePath,
                  logger: logger,
                ),
              )
              .map(
                (final Uri imageUri) => _mapHomeStateRecipe(recipe, imageUri),
              ),
        )
        .whereType<Some<HomeStateRecipe>>()
        .map((final Some<HomeStateRecipe> recipe) => recipe.value)
        .toList();

Option<Uri> _getImageUrlFromImagePath({
  required final HomeWebImageSizerService imageResizerService,
  required final Uri imagePath,
  required final LoggingService logger,
}) =>
    imageResizerService
        .getUrl(filePath: imagePath, widthPixels: widthPixels)
        .fold(
      (final Exception error) {
        logger.error(
          MyError(
            message: 'Failed to get image url from image path',
            originalError: error,
          ),
        );

        return none<Uri>();
      },
      some<Uri>,
    );

HomeStateRecipe _mapHomeStateRecipe(
  HomeWebClientModelRecipe recipe,
  Uri imageUri,
) =>
    HomeStateRecipe(
      id: recipe.id,
      displayedAttributes: _mapDisplayedAttributes(
        recipe.displayedAttributes,
      ),
      difficulty: recipe.difficulty,
      ingredients: _mapIngredients(recipe.ingredients),
      yields: _mapYields(recipe.yields),
      tagIds: recipe.tagIds,
      imageUri: imageUri,
      cuisineIds: recipe.cuisineIds,
    );

HomeStateDisplayedAttributes _mapDisplayedAttributes(
  final HomeWebClientModelDisplayedAttributes displayedAttributes,
) =>
    HomeStateDisplayedAttributes(
      name: displayedAttributes.name,
      headline: displayedAttributes.headline,
      description: displayedAttributes.description,
      descriptionMarkdown: displayedAttributes.descriptionMarkdown,
    );

List<HomeStateIngredient> _mapIngredients(
  final List<HomeWebClientModelIngredient> ingredients,
) =>
    ingredients
        .map(
          (final HomeWebClientModelIngredient ingredient) =>
              HomeStateIngredient(
            id: ingredient.id,
            slug: ingredient.slug,
            displayedName: ingredient.displayedName,
          ),
        )
        .toList();

List<HomeStateYield> _mapYields(
  final List<HomeWebClientModelYield> yields,
) =>
    yields
        .map(
          (final HomeWebClientModelYield yield) => HomeStateYield(
            yield: yield.yield,
            yieldIngredient:
                yield.yieldIngredient.map(_mapToYieldIngredient).toList(),
          ),
        )
        .toList();

HomeStateYieldIngredient _mapToYieldIngredient(
  final HomeWebClientModelYieldIngredient ingredient,
) =>
    HomeStateYieldIngredient(
      id: ingredient.id,
      amount: ingredient.amount,
      unit: ingredient.unit,
    );

HomeStateFilterTag _mapToTag(HomeWebClientModelTag tag) => HomeStateFilterTag(
      id: tag.id,
      displayedName: tag.displayedName,
      type: tag.type,
      isSelected: false,
      numberOfRecipes: tag.numberOfRecipes,
    );

HomeStateFilterCuisine _mapToCuisine(HomeWebClientModelCuisine cuisine) =>
    HomeStateFilterCuisine(
      id: cuisine.id,
      displayedName: cuisine.displayedName,
      slug: cuisine.slug,
      isSelected: false,
      numberOfRecipes: cuisine.numberOfRecipes,
      countryCode: cuisine.countryCode,
    );

List<HomeStateFilter> _replaceWIthId({
  required List<HomeStateFilter> data,
  required String filterId,
  required bool isSelected,
}) =>
    data
        .map(
          (final HomeStateFilter filter) => filter.id == filterId
              ? filter.copyWith(isSelected: isSelected)
              : filter,
        )
        .toList();
