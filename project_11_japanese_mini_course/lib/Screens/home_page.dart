import 'package:flutter/material.dart';
import 'package:japanes_mini_course/Components/category.dart';
import 'package:japanes_mini_course/Screens/colors_page.dart';
import 'package:japanes_mini_course/Screens/family_members_page.dart';
import 'package:japanes_mini_course/Screens/number_page.dart';
import 'package:japanes_mini_course/Screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> categories = [
      {
        'title': 'Number',
        'color': const Color(0xffEF9235),
        'page': (Color color) => NumberPage(color: color),
      },
      {
        'title': 'Family Members',
        'color': const Color(0xff558B37),
        'page': (Color color) => FamilyMembersPage(color: color),
      },
      {
        'title': 'Colors',
        'color': const Color(0xff79359F),
        'page': (Color color) => ColorsPage(color: color),
      },
      {
        'title': 'Phrases',
        'color': const Color(0xff50ADC7),
        'page': (Color color) => PhrasesPage(color: color),
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        title: const Text(
          'Japanese Mini Course',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ListView.separated(
            padding: EdgeInsets.symmetric(
              vertical: constraints.maxHeight * 0.08,
              horizontal: constraints.maxWidth * 0.08,
            ),
            itemCount: categories.length,
            separatorBuilder:
                (context, index) =>
                    SizedBox(height: constraints.maxHeight * 0.04),
            itemBuilder: (context, index) {
              final category = categories[index];
              return Category(
                title: category['title'] as String,
                color: category['color'] as Color,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) =>
                              (category['page'] as Widget Function(Color))(
                                category['color'] as Color,
                              ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
