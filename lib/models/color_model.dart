import 'package:audioplayers/audioplayers.dart';

class ColorModel {
  final String image;
  final String japaneseText;
  final String englishText;
  final String audio;

  ColorModel({
    required this.image,
    required this.japaneseText,
    required this.englishText,
    required this.audio,
  });

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(audio));
  }
}
