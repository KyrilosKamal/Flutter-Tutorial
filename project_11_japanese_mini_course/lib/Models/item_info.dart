import 'package:audioplayers/audioplayers.dart';

class ItemInfo {
  final String image;
  final String jpName;
  final String enName;
  final String audio;

  // Use a static AudioPlayer instance for better performance
  static final AudioPlayer _player = AudioPlayer();

  ItemInfo({
    required this.image,
    required this.jpName,
    required this.enName,
    required this.audio,
  });

  Future<void> playAudio() async {
    await _player.stop(); // Stop any currently playing audio
    await _player.play(AssetSource(audio));
  }
}
