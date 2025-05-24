import 'package:flutter/material.dart';
import 'package:japanes_mini_course/Models/phrases_model.dart';

class PhrasesInfo extends StatelessWidget {
  final PhrasesModel phrasesModel;
  final Color color;
  const PhrasesInfo({
    super.key,
    required this.phrasesModel,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            // Expanded for text to fit available space
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Japanese Name
                  Text(
                    phrasesModel.jpName,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  // English Name
                  Text(
                    phrasesModel.enName,
                    style: const TextStyle(fontSize: 16, color: Colors.white70),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                phrasesModel.playAudio();
              },
              icon: const Icon(
                Icons.play_circle_outline,
                size: 40,
                color: Colors.white,
              ),
              tooltip: 'Play audio',
            ),
          ],
        ),
      ),
    );
  }
}
