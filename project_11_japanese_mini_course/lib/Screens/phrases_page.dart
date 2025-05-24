import 'package:flutter/material.dart';
import 'package:japanes_mini_course/Components/phrase_info.dart';
import 'package:japanes_mini_course/Models/phrases_model.dart';

class PhrasesPage extends StatelessWidget {
  final Color color;
  const PhrasesPage({super.key, required this.color});

  static final List<PhrasesModel> _phraseInfo = [
    PhrasesModel(
      audio: 'sounds/phrases/are_you_coming.wav',
      jpName: 'Kimasu ka?',
      enName: 'Are you coming?',
    ),
    PhrasesModel(
      audio: 'sounds/phrases/dont_forget_to_subscribe.wav',
      jpName: 'Kōdoku o o wasurenaku',
      enName: 'Don\'t Forget to Subscribe',
    ),
    PhrasesModel(
      audio: 'sounds/phrases/how_are_you_feeling.wav',
      jpName: 'Kōdoku o o wasurenaku',
      enName: 'How are you feeling?',
    ),
    PhrasesModel(
      audio: 'sounds/phrases/i_love_anime.wav',
      jpName: 'watashi wa anime na daisuki',
      enName: 'I Love Anime',
    ),
    PhrasesModel(
      audio: 'sounds/phrases/i_love_programming.wav',
      jpName: 'watashi wa puroguramingu na daisuki',
      enName: 'I Love Programming',
    ),
    PhrasesModel(
      audio: 'sounds/phrases/programming_is_easy.wav',
      jpName: 'proguramingu wa kantan',
      enName: 'Programming is easy',
    ),
    PhrasesModel(
      audio: 'sounds/phrases/what_is_your_name.wav',
      jpName: 'namae wa nanidesu ka?',
      enName: 'What is your name?',
    ),
    PhrasesModel(
      audio: 'sounds/phrases/where_are_you_going.wav',
      jpName: 'Doko ni iku no?',
      enName: 'Where are you going?',
    ),
    PhrasesModel(
      audio: 'sounds/phrases/yes_im_coming.wav',
      jpName: 'Hai, watashi wa ikimasu',
      enName: 'Yes, I am coming',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Phrases Page',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: color,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ListView.separated(
            padding: EdgeInsets.symmetric(
              vertical: constraints.maxHeight * 0.02,
              horizontal: constraints.maxWidth * 0.04,
            ),
            itemCount: _phraseInfo.length,
            separatorBuilder:
                (_, __) => SizedBox(height: constraints.maxHeight * 0.015),
            itemBuilder: (context, index) {
              return FractionallySizedBox(
                widthFactor: 1,
                child: PhrasesInfo(
                  phrasesModel: _phraseInfo[index],
                  color: color,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
