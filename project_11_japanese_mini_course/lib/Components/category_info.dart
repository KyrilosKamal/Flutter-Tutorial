import 'package:flutter/material.dart';
import 'package:japanes_mini_course/Models/item_info.dart';

class CategoryInfo extends StatelessWidget {
  final ItemInfo itemInfo;
  final Color color;
  const CategoryInfo({super.key, required this.itemInfo, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // Image
            Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                color: const Color(0xffFFF6DC),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(itemInfo.image, fit: BoxFit.contain),
            ),
            const SizedBox(width: 16),
            // Names
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    itemInfo.jpName,
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    itemInfo.enName,
                    style: const TextStyle(fontSize: 18, color: Colors.white70),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            // Play Button
            IconButton(
              onPressed: itemInfo.playAudio,
              icon: const Icon(
                Icons.play_circle_outline,
                size: 40,
                color: Colors.white,
              ),
              tooltip: 'Play Audio',
            ),
          ],
        ),
      ),
    );
  }
}
