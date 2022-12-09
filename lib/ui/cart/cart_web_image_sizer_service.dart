import 'package:fpdart/fpdart.dart';

abstract class CartWebImageSizerService {
  Either<Exception, Uri> getUrl({
    required final Uri filePath,
    required final int widthPixels,
  });
}
