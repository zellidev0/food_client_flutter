import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/ui/cart/services/cart_web_image_sizer_service.dart';
import 'package:food_client/ui/home/services/home_web_image_sizer_service.dart';

import 'package:food_client/ui/ingredients_sorting/services/ingredients_sorting_web_image_sizer_service.dart';
import 'package:food_client/ui/single_recipe/services/single_recipe_web_image_sizer_service.dart';
import 'package:fpdart/fpdart.dart';

abstract class WebImageSizerServiceAggregator
    implements
        HomeWebImageSizerService,
        SingleRecipeWebImageSizerService,
        CartWebImageSizerService,
        IngredientsSortingWebImageSizerService {}

abstract class WebImageSizerService extends Cubit<Unit>
    implements WebImageSizerServiceAggregator {
  WebImageSizerService(super.state);
}

class WebImageSizerServiceImplementation extends WebImageSizerService {
  WebImageSizerServiceImplementation._() : super(unit);

  factory WebImageSizerServiceImplementation.instance() =>
      WebImageSizerServiceImplementation._();

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
