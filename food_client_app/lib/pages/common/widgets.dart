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
      placeholder: (final _, final __) => const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircularProgressIndicator(),
        ],
      ),
      errorWidget: (final _, final __, final ___) => const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.image_not_supported),
        ],
      ),
    );
