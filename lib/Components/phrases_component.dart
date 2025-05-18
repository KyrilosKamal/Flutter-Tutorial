import 'package:flutter/material.dart';
import 'package:project_11_language_learning_app/models/phrase_model.dart';

class PhrasesComponent extends StatelessWidget {
  // final String? image;
  // final String? numberJanapessText, numberEnglishText, numberAudio;
  final PhraseModel phraseModel;
  final Color color;
  const PhrasesComponent({
    super.key,
    required this.phraseModel,
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
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  phraseModel.translatedPhrase,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                Text(
                  phraseModel.phrase,
                  style: TextStyle(fontSize: 16, color: Colors.white),

                  maxLines: null,
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
                phraseModel.playAudio();
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
