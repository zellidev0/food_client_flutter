import 'package:fpdart/fpdart.dart';

abstract class HomeWebClientService {
  TaskEither<Exception, Map<String, dynamic>> fetchAllRecipes();
}
