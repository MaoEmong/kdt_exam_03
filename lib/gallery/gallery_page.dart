import 'package:exam_03/gallery/components/gallery_image_view.dart';
import 'package:exam_03/gallery/components/gallery_menu_button.dart';
import 'package:exam_03/gallery/gallery_mock_data.dart';
import 'package:exam_03/gallery/gallery_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GalleryPage extends ConsumerWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final galleryState = ref.watch(galleryProvider);
    final images = galleryImages[galleryState.selectedMenu] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: const Text('갤러리'),
        actions: [
          GalleryMenuButton(
            title: '캠핑 갤러리',
            isSelected: galleryState.selectedMenu == campingGallery,
            onPressed: () {
              ref.read(galleryProvider.notifier).selectMenu(campingGallery);
            },
          ),
          GalleryMenuButton(
            title: '여행 갤러리',
            isSelected: galleryState.selectedMenu == travelGallery,
            onPressed: () {
              ref.read(galleryProvider.notifier).selectMenu(travelGallery);
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          final image = images[index];

          return Semantics(
            label: image.title,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: GalleryImageView(image: image),
            ),
          );
        },
      ),
    );
  }
}
