import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  // Defining a stateless widget named Category.
  final String?
  text; // A nullable string property to hold the text for the tile.
  final Color
  color; // A color property to define the background color of the tile.
  final VoidCallback? onTap;

  const Category({
    super.key,
    required this.text,
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        alignment: Alignment.centerLeft,
        color: color,
        padding: const EdgeInsets.only(left: 16),
        child: Text(
          text!,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
