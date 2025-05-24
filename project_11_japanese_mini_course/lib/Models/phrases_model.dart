import 'package:audioplayers/audioplayers.dart';

class PhrasesModel {
  final String jpName;
  final String enName;
  final String audio;
  static final AudioPlayer _player = AudioPlayer();

  PhrasesModel({
    required this.jpName,
    required this.enName,
    required this.audio,
  });

  Future<void> playAudio() async {
    await _player.stop();
    await _player.play(AssetSource(audio));
  }
}
