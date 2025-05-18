import 'package:flutter/material.dart';
import 'package:project_11_language_learning_app/models/family_model.dart';

class FamilyComponent extends StatelessWidget {
  // final String? image;
  // final String? numberJanapessText, numberEnglishText, numberAudio;
  final FamilyModel familyModel;
  final Color color;
  const FamilyComponent({super.key, required this.familyModel, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      color: color,
      height: 80,
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF6DC),
            child: Image(image: AssetImage(familyModel.image)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  familyModel.japaneseText,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  familyModel.englishText,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              icon: Icon(Icons.play_arrow, color: Colors.white, size: 30),
              onPressed: () {
                familyModel.playSound();
                // final AudioPlayer player = AudioPlayer();
                // player.play(AssetSource(number.audio));
              },
              visualDensity: VisualDensity.compact,
            ),
          ),
        ],
      ),
    );
  }
}
