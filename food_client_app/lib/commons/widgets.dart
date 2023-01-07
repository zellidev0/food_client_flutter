import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

CachedNetworkImage buildCachedNetworkImage({
  required final Uri imageUrl,
}) =>
    CachedNetworkImage(
      imageUrl: imageUrl.toString(),
      fit: BoxFit.cover,
      fadeInDuration: const Duration(milliseconds: 200),
      fadeOutDuration: const Duration(milliseconds: 200),
      placeholder: (final _, final __) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          CircularProgressIndicator(),
        ],
      ),
      errorWidget: (final _, final __, final ___) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Icon(Icons.image_not_supported),
        ],
      ),
    );

Widget buildTabBar({
  required final List<Tab> tabs,
}) =>
    Builder(
      builder: (final BuildContext context) => TabBar(
        labelColor: Theme.of(context).colorScheme.onSecondaryContainer,
        unselectedLabelColor: Theme.of(context).colorScheme.onSurfaceVariant,
        splashBorderRadius: const BorderRadius.all(Radius.circular(64)),
        indicator: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
          borderRadius: const BorderRadius.all(Radius.circular(64)),
        ),
        tabs: tabs,
      ),
    );

Widget buildNoItemsFoundIcon({required final String message}) => Builder(
      builder: (final BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Icon(
              Icons.no_drinks,
              size: 64,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            message,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
