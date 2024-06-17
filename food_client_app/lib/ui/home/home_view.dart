import 'package:flutter/material.dart';
import 'package:food_client/mvc.dart';
import 'package:food_client/ui/home/home_controller.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:food_client/ui/home/widgets/recipe_header.dart';
import 'package:food_client/ui/home/widgets/recipes_list.dart';

final PageStorageBucket pageStorageBucket = PageStorageBucket();

class HomeView extends MvcView<HomeController, HomeModel> {
  const HomeView({
    required super.controller,
    required super.model,
    super.key,
  });

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16).copyWith(bottom: 0),
          child: NestedScrollView(
            headerSliverBuilder: (final _, final __) => <Widget>[
              SliverAppBar(
                floating: true,
                pinned: true,
                backgroundColor: Colors.transparent,
                scrolledUnderElevation: 0,
                flexibleSpace: FlexibleSpaceBar(
                  titlePadding: EdgeInsets.zero,
                  centerTitle: true,
                  title: RecipeHeader(controller: controller),
                ),
              ),
            ],
            body: RecipesList(
              controller: controller,
              model: model,
            ),
          ),
        ),
      );
}
