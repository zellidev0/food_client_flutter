import 'package:fpdart/fpdart.dart';

abstract class GeneralWebImageSizerService {
  Either<Exception, Uri> getUrl({
    required final Uri filePath,
    required final int widthPixels,
  });
}
