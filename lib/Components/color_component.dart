import 'package:flutter/material.dart';
import 'package:project_11_language_learning_app/models/color_model.dart';

class ColorComponent extends StatelessWidget {
  // final String? image;
  // final String? numberJanapessText, numberEnglishText, numberAudio;
  final ColorModel colorModel;
  final Color color;
  const ColorComponent({
    super.key,
    required this.colorModel,
    required this.color,
  });
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
            child: Image(image: AssetImage(colorModel.image)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  colorModel.japaneseText,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  colorModel.englishText,
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
                colorModel.playSound();
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
