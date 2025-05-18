import 'package:audioplayers/audioplayers.dart';

class FamilyModel {
  final String image;
  final String japaneseText;
  final String englishText;
  final String audio;

  FamilyModel({
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
