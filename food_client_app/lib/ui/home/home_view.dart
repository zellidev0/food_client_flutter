import 'package:flutter/material.dart';
import 'package:food_client/ui/home/widgets/recipe_header.dart';
import 'package:food_client/ui/home/widgets/recipes_list.dart';

final PageStorageBucket pageStorageBucket = PageStorageBucket();

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
    required this.controller,
    required this.model,
  });

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16).copyWith(bottom: 0),
          child: NestedScrollView(
            headerSliverBuilder: (final _, final __) => <Widget>[
              const SliverAppBar(
                floating: true,
                pinned: true,
                backgroundColor: Colors.transparent,
                scrolledUnderElevation: 0,
                flexibleSpace: FlexibleSpaceBar(
                  titlePadding: EdgeInsets.zero,
                  centerTitle: true,
                  title: RecipeHeader(),
                ),
              ),
            ],
            body: const RecipesList(),
          ),
        ),
      );
}
