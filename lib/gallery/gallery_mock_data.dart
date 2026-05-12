import 'package:exam_03/gallery/gallery_vm.dart';

class GalleryImage {
  const GalleryImage({
    required this.title,
    required this.path,
  });

  final String title;
  final String path;

  bool get isNetworkImage => path.startsWith('http');
}

const galleryImages = {
  campingGallery: [
    GalleryImage(
      title: '캠핑 이미지 1',
      path:
          'https://images.unsplash.com/photo-1504280390367-361c6d9f38f4?auto=format&fit=crop&w=800&q=80',
    ),
    GalleryImage(
      title: '캠핑 이미지 2',
      path:
          'https://images.unsplash.com/photo-1478131143081-80f7f84ca84d?auto=format&fit=crop&w=800&q=80',
    ),
    GalleryImage(
      title: '캠핑 이미지 3',
      path:
          'https://images.unsplash.com/photo-1523987355523-c7b5b0dd90a7?auto=format&fit=crop&w=800&q=80',
    ),
  ],
  travelGallery: [
    GalleryImage(
      title: '여행 이미지 1',
      path:
          'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&w=800&q=80',
    ),
    GalleryImage(
      title: '여행 이미지 2',
      path:
          'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?auto=format&fit=crop&w=800&q=80',
    ),
    GalleryImage(
      title: '여행 이미지 3',
      path:
          'https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?auto=format&fit=crop&w=800&q=80',
    ),
  ],
};
