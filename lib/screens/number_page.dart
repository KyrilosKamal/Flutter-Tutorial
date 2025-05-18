import 'package:flutter/material.dart';
import 'package:project_11_language_learning_app/Components/number_component.dart';
import 'package:project_11_language_learning_app/models/item_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Number> numbers = const [
    Number(
      image: 'assets/images/numbers/number_one.png',
      japaneseText: 'Ichi',
      englishText: 'One',
      audio: 'sounds/numbers/number_one_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_two.png',
      japaneseText: 'Ni',
      englishText: 'Two',
      audio: 'sounds/numbers/number_two_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_three.png',
      japaneseText: 'San',
      englishText: 'Three',
      audio: 'sounds/numbers/number_three_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_four.png',
      japaneseText: 'Shi',
      englishText: 'Four',
      audio: 'sounds/numbers/number_four_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_five.png',
      japaneseText: 'Go',
      englishText: 'Five',
      audio: 'sounds/numbers/number_five_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_six.png',
      japaneseText: 'Roku',
      englishText: 'Six',
      audio: 'sounds/numbers/number_six_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_seven.png',
      japaneseText: 'Sebun',
      englishText: 'Seven',
      audio: 'sounds/numbers/number_seven_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_eight.png',
      japaneseText: 'Hachi',
      englishText: 'Eight',
      audio: 'sounds/numbers/number_eight_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_nine.png',
      japaneseText: 'Kyuu',
      englishText: 'Nine',
      audio: 'sounds/numbers/number_nine_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_ten.png',
      japaneseText: 'Juu',
      englishText: 'Ten',
      audio: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return NumberComponent(
            color: Color(0xffEF9235),
            number: numbers[index],
          );
        },
      ),
    );
  }
}
