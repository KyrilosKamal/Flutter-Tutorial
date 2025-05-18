import 'package:flutter/material.dart';
import 'package:project_11_language_learning_app/Components/color_component.dart';
import 'package:project_11_language_learning_app/models/color_model.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});
  final List<ColorModel> colorModel = [
    ColorModel(
      image: "assets/images/colors/color_black.png",
      japaneseText: "Drakuro",
      englishText: "Black",
      audio: "sounds/colors/black.wav",
    ),
    ColorModel(
      image: "assets/images/colors/color_brown.png",
      japaneseText: "Chairo",
      englishText: "Brown",
      audio: "sounds/colors/brown.wav",
    ),

    ColorModel(
      image: "assets/images/colors/color_dusty_yellow.png",
      japaneseText: "Hokori ppoi kiiro",
      englishText: "Dusty Yellow",
      audio: "sounds/colors/dusty_yellow.wav",
    ),
    ColorModel(
      image: "assets/images/colors/color_gray.png",
      japaneseText: "Gure",
      englishText: "Gray",
      audio: "sounds/colors/gray.wav",
    ),
    ColorModel(
      image: "assets/images/colors/color_green.png",
      japaneseText: "Midori",
      englishText: "Green",
      audio: "sounds/colors/green.wav",
    ),
    ColorModel(
      image: "assets/images/colors/color_red.png",
      japaneseText: "Aka",
      englishText: "Red",
      audio: "sounds/colors/red.wav",
    ),
    ColorModel(
      image: "assets/images/colors/color_white.png",
      japaneseText: "Shiroy",
      englishText: "White",
      audio: "sounds/colors/white.wav",
    ),
    ColorModel(
      image: "assets/images/colors/yellow.png",
      japaneseText: "Kiiro",
      englishText: "Yellow",
      audio: "sounds/colors/yellow.wav",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: colorModel.length,
        itemBuilder: (context, index) {
          return ColorComponent(
            color: Color(0xff79359F),
            colorModel: colorModel[index],
          );
        },
      ),
    );
  }
}
