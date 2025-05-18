import 'package:audioplayers/audioplayers.dart';

class PhraseModel {
  final String phrase;
  final String audio;
  final String translatedPhrase;
  PhraseModel({
    required this.phrase,
    required this.audio,
    required this.translatedPhrase,
  });

  void playAudio() {
    final player = AudioPlayer();
    player.play(AssetSource(audio));
  }
}
