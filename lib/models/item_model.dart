import 'package:audioplayers/audioplayers.dart';

class Number {
  final String image;
  final String japaneseText;
  final String englishText;
  final String audio;

  const Number({
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
