import 'package:flutter/material.dart';
import 'package:food_client/pages/common/widgets.dart';
import 'package:fpdart/fpdart.dart';

class CartImage extends StatelessWidget {
  final Option<Uri> imageUrl;

  const CartImage({super.key, required this.imageUrl});
  @override
  Widget build(BuildContext context) => AspectRatio(
        aspectRatio: 1.5 / 1,
        child: imageUrl.fold(
          () => const Icon(Icons.image_not_supported),
          (final Uri url) => buildCachedNetworkImage(imageUrl: url),
        ),
      );
}
