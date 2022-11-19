import 'package:food_client/profile/profile_model.dart';
import 'package:food_client/profile/profile_view.dart';
import 'package:food_client/providers.dart';
import 'package:fpdart/fpdart.dart';

class ProfileControllerImplementation extends ProfileController {
  // ignore: unused_field
  late final ProfileRecipeParserService _recipeParserService;
  // ignore: unused_field
  late final ProfileWebClientService _webClientService;

  @override
  ProfileModel build() {
    _recipeParserService = ref.watch(profileRecipeParserServiceProvider);
    _webClientService = ref.watch(profileWebClientServiceProvider);
    return ProfileModel();
  }
}

abstract class ProfileRecipeParserService {
  TaskEither<Exception, Map<String, dynamic>> fetchAllThings();
}

abstract class ProfileWebClientService {
  TaskEither<Exception, Map<String, dynamic>> fetchAllThings();
}
