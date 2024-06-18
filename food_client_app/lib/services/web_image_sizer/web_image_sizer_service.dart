import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/pages/features/cart/services/cart_web_image_sizer_service.dart';
import 'package:food_client/pages/features/ingredients_sorting/services/web_service/ingredients_sorting_web_image_sizer_service.dart';
import 'package:food_client/pages/features/single_recipe/services/web_service/single_recipe_web_image_sizer_service.dart';
import 'package:food_client/services/web_image_sizer/general_web_image_sizer_service.dart';
import 'package:food_client/ui/home/services/home_web_image_sizer_service.dart';
import 'package:fpdart/fpdart.dart';

abstract class WebImageSizerServiceAggregator
    implements
        GeneralWebImageSizerService,
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

  String _helloFreshImageBaseURL({required final int widthPixels}) =>
      'https://img.hellofresh.com/'
      'c_fit,'
      'f_auto,'
      'fl_lossy,'
      'h_${widthPixels ~/ 2},'
      'q_auto,'
      'w_$widthPixels/hellofresh_s3';
}
