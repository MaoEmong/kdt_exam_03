# Flutter Gallery App 구현 리포트

## 1. 프로젝트 개요

Flutter와 `flutter_riverpod`을 사용하여 메뉴 선택에 따라 갤러리 이미지 목록이 변경되는 간단한 갤러리 앱을 구현했습니다.

## 2. 구현 기능

- 상단 AppBar에 2개의 메뉴 버튼 배치
  - 캠핑 갤러리
  - 여행 갤러리
- Riverpod 기반 상태 관리 적용
  - 현재 선택된 메뉴 상태를 `NotifierProvider`로 관리
  - 메뉴 클릭 시 `ref.read`를 통해 상태 변경
  - 화면은 `ref.watch`로 상태를 감시하여 자동 갱신
- 선택된 메뉴에 따라 본문 GridView 이미지 목록 변경
- 각 카테고리별 이미지 3장 표시
- 네트워크 URL 이미지와 로컬 asset 이미지 경로를 모두 처리할 수 있도록 구현

## 3. 주요 파일 구조

```text
lib/
  main.dart
  gallery/
    gallery_page.dart
    gallery_vm.dart
    gallery_mock_data.dart
    components/
      gallery_image_view.dart
      gallery_menu_button.dart
docs/
  Animation.gif
```

## 4. 동작 화면

![동작 화면](docs/Animation.gif)

## 5. 실행 방법

```bash
flutter pub get
flutter run
```

## 6. 검증 방법

```bash
flutter analyze
```

## 7. 사용 패키지

- `flutter_riverpod`
- `cupertino_icons`
