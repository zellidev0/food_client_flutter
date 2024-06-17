import 'package:food_client/pages/features/single_recipe/services/web_service/single_recipe_web_image_sizer_service.dart';
import 'package:fpdart/fpdart.dart';

mixin SingleRecipeWebImageSizerServiceMixin
    implements SingleRecipeWebImageSizerService {
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
