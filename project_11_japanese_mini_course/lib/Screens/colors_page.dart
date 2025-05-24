import 'package:flutter/material.dart';
import 'package:japanes_mini_course/Components/category_info.dart';
import 'package:japanes_mini_course/Models/item_info.dart';

class ColorsPage extends StatelessWidget {
  final Color color;
  ColorsPage({super.key, required this.color});

  static final List<ItemInfo> _itemInfo = [
    ItemInfo(
      image: 'assets/images/colors/color_black.png',
      jpName: 'Burakku',
      enName: 'Black',
      audio: 'sounds/colors/black.wav',
    ),
    ItemInfo(
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'Brown',
      audio: 'sounds/colors/brown.wav',
    ),
    ItemInfo(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Hokori ppoi kiiro',
      enName: 'Dusty Yellow',
      audio: 'sounds/colors/dusty yellow.wav',
    ),
    ItemInfo(
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Gurē',
      enName: 'Gray',
      audio: 'sounds/colors/gray.wav',
    ),
    ItemInfo(
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'Green',
      audio: 'sounds/colors/green.wav',
    ),
    ItemInfo(
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'Red',
      audio: 'sounds/colors/red.wav',
    ),
    ItemInfo(
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiro',
      enName: 'White',
      audio: 'sounds/colors/white.wav',
    ),
    ItemInfo(
      image: 'assets/images/colors/yellow.png',
      jpName: 'Kiiro',
      enName: 'Yellow',
      audio: 'sounds/colors/yellow.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final double padding = MediaQuery.of(context).size.width * 0.04;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors', style: TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: color,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Use GridView for better fit on all screen sizes
          int crossAxisCount = constraints.maxWidth > 600 ? 2 : 1;
          return Padding(
            padding: EdgeInsets.all(padding),
            child: GridView.builder(
              itemCount: _itemInfo.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: padding,
                mainAxisSpacing: padding,
                childAspectRatio: 3.5,
              ),
              itemBuilder: (context, index) {
                return CategoryInfo(itemInfo: _itemInfo[index], color: color);
              },
            ),
          );
        },
      ),
    );
  }
}
