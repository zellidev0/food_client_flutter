import 'package:food_client/ui/cart/cart_web_image_sizer_service.dart';
import 'package:food_client/ui/home/home_web_image_sizer_service.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_web_image_sizer_service.dart';
import 'package:food_client/ui/single_recipe/single_recipe_web_image_sizer_service.dart';
import 'package:fpdart/fpdart.dart';


abstract class WebImageSizerServiceAggregator
    implements
        HomeWebImageSizerService,
        SingleRecipeWebImageSizerService,
        CartWebImageSizerService,
        IngredientsSortingWebImageSizerService {}

class WebImageSizerService implements WebImageSizerServiceAggregator {
  @override
  Either<Exception, Uri> getUrl({
    required final Uri filePath,
    required final int widthPixels,
  }) =>
      Either<Exception, Uri>.tryCatch(
        () => Uri.parse(
          _helloFreshImageBaseURL(widthPixels: widthPixels) +
              filePath.toString(),
        ),
        (final Object error, final _) =>
            Exception('Failed to parse uri: $error'),
      );
}

String _helloFreshImageBaseURL({required final int widthPixels}) =>
    'https://img.hellofresh.com/'
    'c_fit,'
    'f_auto,'
    'fl_lossy,'
    'h_${widthPixels ~/ 2},'
    'q_auto,'
    'w_$widthPixels/hellofresh_s3';
