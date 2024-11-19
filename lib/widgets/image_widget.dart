import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.imageUrlString,
  });

  final String imageUrlString;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrlString,
      height: 46,
      width: 46,
      filterQuality: FilterQuality.medium,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: const Card(child: SizedBox(height: 44)),
        );
      },
      errorBuilder: (context, error, stackTrace) => const Icon(
        Icons.image_not_supported_outlined,
        size: 46,
      ),
    );
  }
}
