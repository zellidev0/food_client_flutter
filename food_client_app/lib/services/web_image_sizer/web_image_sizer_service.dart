import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/pages/features/ingredients_sorting/services/web_service/ingredients_sorting_web_image_sizer_service.dart';
import 'package:food_client/pages/features/single_recipe/services/web_service/single_recipe_web_image_sizer_service.dart';
import 'package:food_client/services/web_image_sizer/mixins/single_recipe_web_image_sizer_service_mixin.dart';
import 'package:food_client/pages/features/cart/services/cart_web_image_sizer_service.dart';
import 'package:food_client/ui/home/services/home_web_image_sizer_service.dart';

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

class WebImageSizerServiceImplementation extends WebImageSizerService
    with SingleRecipeWebImageSizerServiceMixin {
  WebImageSizerServiceImplementation._() : super(unit);

  factory WebImageSizerServiceImplementation.instance() =>
      WebImageSizerServiceImplementation._();
}
