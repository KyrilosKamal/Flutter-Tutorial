import 'package:flutter/material.dart';
import 'package:japanes_mini_course/Components/category_info.dart';
import 'package:japanes_mini_course/Models/item_info.dart';

class NumberPage extends StatelessWidget {
  final Color color;
  NumberPage({super.key, required this.color});

  static final List<ItemInfo> _itemInfo = [
    ItemInfo(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'Ichi',
      enName: 'One',
      audio: 'sounds/numbers/number_one_sound.mp3',
    ),
    ItemInfo(
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      enName: 'Two',
      audio: 'sounds/numbers/number_two_sound.mp3',
    ),
    ItemInfo(
      image: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      enName: 'Three',
      audio: 'sounds/numbers/number_three_sound.mp3',
    ),
    ItemInfo(
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Shi',
      enName: 'Four',
      audio: 'sounds/numbers/number_four_sound.mp3',
    ),
    ItemInfo(
      image: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
      enName: 'Five',
      audio: 'sounds/numbers/number_five_sound.mp3',
    ),
    ItemInfo(
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      enName: 'Six',
      audio: 'sounds/numbers/number_six_sound.mp3',
    ),
    ItemInfo(
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Sebun',
      enName: 'Seven',
      audio: 'sounds/numbers/number_seven_sound.mp3',
    ),
    ItemInfo(
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'Hachi',
      enName: 'Eight',
      audio: 'sounds/numbers/number_eight_sound.mp3',
    ),
    ItemInfo(
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'Kyuu',
      enName: 'Nine',
      audio: 'sounds/numbers/number_nine_sound.mp3',
    ),
    ItemInfo(
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'Juu',
      enName: 'Ten',
      audio: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final double padding = MediaQuery.of(context).size.width * 0.04;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Page', style: TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: color,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Use a responsive grid if width is large, else ListView
          if (constraints.maxWidth > 600) {
            // Tablet/Desktop: Grid
            return Padding(
              padding: EdgeInsets.all(padding),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: constraints.maxWidth ~/ 300,
                  childAspectRatio: 2.5,
                  crossAxisSpacing: padding,
                  mainAxisSpacing: padding,
                ),
                itemCount: _itemInfo.length,
                itemBuilder: (context, index) {
                  return CategoryInfo(itemInfo: _itemInfo[index], color: color);
                },
              ),
            );
          } else {
            // Mobile: List
            return ListView.separated(
              padding: EdgeInsets.symmetric(
                vertical: padding,
                horizontal: padding,
              ),
              itemCount: _itemInfo.length,
              separatorBuilder: (_, __) => SizedBox(height: padding),
              itemBuilder: (context, index) {
                return CategoryInfo(itemInfo: _itemInfo[index], color: color);
              },
            );
          }
        },
      ),
    );
  }
}
