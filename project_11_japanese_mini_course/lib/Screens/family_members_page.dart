import 'package:flutter/material.dart';
import 'package:japanes_mini_course/Components/category_info.dart';
import 'package:japanes_mini_course/Models/item_info.dart';

class FamilyMembersPage extends StatelessWidget {
  final Color color;
  const FamilyMembersPage({super.key, required this.color});

  static final List<ItemInfo> _itemInfo = [
    ItemInfo(
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'Daughter',
      audio: 'sounds/family_members/daughter.wav',
    ),
    ItemInfo(
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichioya',
      enName: 'Father',
      audio: 'sounds/family_members/father.wav',
    ),
    ItemInfo(
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Otōsan',
      enName: 'GrandFather',
      audio: 'sounds/family_members/grand father.wav',
    ),
    ItemInfo(
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      enName: 'Grandmother',
      audio: 'sounds/family_members/grand mother.wav',
    ),
    ItemInfo(
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Hahaoya',
      enName: 'Mother',
      audio: 'sounds/family_members/mother.wav',
    ),
    ItemInfo(
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Nīsan',
      enName: 'Older Brother',
      audio: 'sounds/family_members/older_bother.wav',
    ),
    ItemInfo(
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: 'Older Sister',
      audio: 'sounds/family_members/older sister.wav',
    ),
    ItemInfo(
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'Son',
      audio: 'sounds/family_members/son.wav',
    ),
    ItemInfo(
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōto',
      enName: 'Younger Brother',
      audio: 'sounds/family_members/younger brohter.wav',
    ),
    ItemInfo(
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      enName: 'Younger Sister',
      audio: 'sounds/family_members/younger sister.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final double padding = MediaQuery.of(context).size.width * 0.03;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Family Member',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: color,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: padding,
              vertical: padding / 2,
            ),
            child: ListView.separated(
              itemCount: _itemInfo.length,
              separatorBuilder:
                  (context, index) => SizedBox(height: padding / 2),
              itemBuilder: (context, index) {
                return FractionallySizedBox(
                  widthFactor: 1,
                  child: CategoryInfo(itemInfo: _itemInfo[index], color: color),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
