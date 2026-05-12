import 'package:flutter/material.dart';

class GalleryMenuButton extends StatelessWidget {
  const GalleryMenuButton({
    required this.title,
    required this.isSelected,
    required this.onPressed,
    super.key,
  });

  final String title;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: isSelected
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.onSurface,
      ),
      child: Text(title),
    );
  }
}
