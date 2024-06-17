import 'package:fpdart/fpdart.dart';

abstract class SingleRecipeWebImageSizerService {
  Either<Exception, Uri> getUrl({
    required final Uri filePath,
    required final int widthPixels,
  });
}
