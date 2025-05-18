import 'package:flutter/material.dart';
import 'package:project_11_language_learning_app/Components/phrases_component.dart';
import 'package:project_11_language_learning_app/models/phrase_model.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});
  final List<PhraseModel> phraseModel = [
    PhraseModel(
      phrase: 'Don\'t forget to subscribe.',
      translatedPhrase: 'Kōdoku suru koto o wasurenaide kudasai.',
      audio: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    PhraseModel(
      phrase: 'I Love Programming.',
      translatedPhrase: 'Watashi wa puroguramingu ga daisukidesu.',
      audio: 'sounds/phrases/i_love_programming.wav',
    ),
    PhraseModel(
      phrase: 'I Love Anime.',
      translatedPhrase: 'Watashi wa anime ga daisukidesu.',
      audio: 'sounds/phrases/i_love_anime.wav',
    ),
    PhraseModel(
      phrase: 'Are you coming?',
      translatedPhrase: 'Kimasu ka?',
      audio: 'sounds/phrases/are_you_coming.wav',
    ),
    PhraseModel(
      phrase: 'How are you feeling?',
      translatedPhrase: 'Go kibun wa ikagadesu ka?',
      audio: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    PhraseModel(
      phrase: 'Programming is Easy.',
      translatedPhrase: 'Puroguramingu wa kantandesu.',
      audio: 'sounds/phrases/programming_is_easy.wav',
    ),
    PhraseModel(
      phrase: 'What is your name?',
      translatedPhrase: 'namae wa nanidesu ka?',
      audio: 'sounds/phrases/what_is_your_name.wav',
    ),
    PhraseModel(
      phrase: 'Where are you going?',
      translatedPhrase: 'Doko ni iku no?',
      audio: 'sounds/phrases/where_are_you_going.wav',
    ),
    PhraseModel(
      phrase: 'Yes, I am coming.',
      translatedPhrase: 'Hai, watashi wa kimasu.',
      audio: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phraseModel.length,
        itemBuilder: (context, index) {
          return PhrasesComponent(
            color: Color(0xff50ADC7),
            phraseModel: phraseModel[index],
          );
        },
      ),
    );
  }
}
