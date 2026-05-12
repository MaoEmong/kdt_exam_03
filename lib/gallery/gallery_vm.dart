import 'package:flutter_riverpod/flutter_riverpod.dart';

const campingGallery = 'camping';
const travelGallery = 'travel';

class GalleryState {
  const GalleryState({
    required this.selectedMenu,
  });

  final String selectedMenu;

  GalleryState copyWith({
    String? selectedMenu,
  }) {
    return GalleryState(
      selectedMenu: selectedMenu ?? this.selectedMenu,
    );
  }
}

// 2. vm
class GalleryVm extends Notifier<GalleryState> {
  @override
  GalleryState build() {
    return const GalleryState(
      selectedMenu: campingGallery,
    );
  }

  void selectMenu(String menu) {
    state = state.copyWith(selectedMenu: menu);
  }
}

// 3. provider
final galleryProvider = NotifierProvider<GalleryVm, GalleryState>(
  GalleryVm.new,
);
