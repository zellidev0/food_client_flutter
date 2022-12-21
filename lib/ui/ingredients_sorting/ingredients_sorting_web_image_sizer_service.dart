import 'package:fpdart/fpdart.dart';

abstract class IngredientsSortingWebImageSizerService {
  Either<Exception, Uri> getUrl({
    required final Uri filePath,
    required final int widthPixels,
  });
}
