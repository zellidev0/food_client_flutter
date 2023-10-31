import 'package:flutter/material.dart';
import 'package:food_client/ui/cart/widgets/cart_view_recipe_list_delegate.dart';

class MyTabBarSliver extends StatelessWidget {
  const MyTabBarSliver({super.key});

  @override
  Widget build(BuildContext context) {
    final double tabbarheight = const TabBar(
          tabs: <Widget>[],
        ).preferredSize.height +
        32;
    return SliverPersistentHeader(
      floating: true,
      pinned: true,
      delegate: TabBarSliverDelegate(
        extendedHeight: tabbarheight,
        collapsedHeight: tabbarheight,
      ),
    );
  }
}
