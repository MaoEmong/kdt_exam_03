import 'package:exam_03/gallery/gallery_mock_data.dart';
import 'package:flutter/material.dart';

class GalleryImageView extends StatelessWidget {
  const GalleryImageView({
    required this.image,
    super.key,
  });

  final GalleryImage image;

  @override
  Widget build(BuildContext context) {
    if (image.isNetworkImage) {
      return Image.network(
        image.path,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return const _GalleryImageError();
        },
      );
    }

    return Image.asset(
      image.path,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return const _GalleryImageError();
      },
    );
  }
}

class _GalleryImageError extends StatelessWidget {
  const _GalleryImageError();

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Color(0xFFE0E0E0),
      child: Center(
        child: Icon(Icons.broken_image),
      ),
    );
  }
}
