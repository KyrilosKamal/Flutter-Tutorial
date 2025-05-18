import 'package:flutter/material.dart';
import 'package:project_11_language_learning_app/Components/family_component.dart';
import 'package:project_11_language_learning_app/models/family_model.dart';

class FamilyPage extends StatelessWidget {
  FamilyPage({super.key});
  final List<FamilyModel> familyModel = [
    FamilyModel(
      image: 'assets/images/family_members/family_father.png',
      japaneseText: 'Otōsan',
      englishText: 'Father',
      audio: 'sounds/family_members/father.wav',
    ),
    FamilyModel(
      image: 'assets/images/family_members/family_mother.png',
      japaneseText: 'Hahaoya',
      englishText: 'Mother',
      audio: 'sounds/family_members/mother.wav',
    ),
    FamilyModel(
      image: 'assets/images/family_members/family_son.png',
      japaneseText: 'Musuko',
      englishText: 'Son',
      audio: 'sounds/family_members/son.wav',
    ),
    FamilyModel(
      image: 'assets/images/family_members/family_daughter.png',
      japaneseText: 'Musume',
      englishText: 'Daughter',
      audio: 'sounds/family_members/daughter.wav',
    ),
    FamilyModel(
      image: 'assets/images/family_members/family_older_brother.png',
      japaneseText: 'Nīsan',
      englishText: 'Older Brother',
      audio: 'sounds/family_members/older_brother.wav',
    ),
    FamilyModel(
      image: 'assets/images/family_members/family_older_sister.png',
      japaneseText: 'Ane',
      englishText: 'Older Sister',
      audio: 'sounds/family_members/older_sister.wav',
    ),
    FamilyModel(
      image: 'assets/images/family_members/family_younger_brother.png',
      japaneseText: 'Otōto',
      englishText: 'Younger Brother',
      audio: 'sounds/family_members/younger_brother.wav',
    ),
    FamilyModel(
      image: 'assets/images/family_members/family_younger_sister.png',
      japaneseText: 'Imōto',
      englishText: 'Younger Sister',
      audio: 'sounds/family_members/younger_sister.wav',
    ),
    FamilyModel(
      image: 'assets/images/family_members/family_grandfather.png',
      japaneseText: 'Ojīsan',
      englishText: 'Grandfather',
      audio: 'sounds/family_members/grand_father.wav',
    ),
    FamilyModel(
      image: 'assets/images/family_members/family_grandmother.png',
      japaneseText: 'Sobo',
      englishText: 'Grandmother',
      audio: 'sounds/family_members/grand_mother.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: familyModel.length,
        itemBuilder: (context, index) {
          return FamilyComponent(
            color: Color(0xff558B37),
            familyModel: familyModel[index],
          );
        },
      ),
    );
  }
}
