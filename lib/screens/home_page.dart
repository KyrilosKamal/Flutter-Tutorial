import 'package:flutter/material.dart'; // Importing the Flutter Material package to use pre-built widgets and themes.
import 'package:project_11_language_learning_app/screens/color_page.dart';
import 'package:project_11_language_learning_app/screens/family_page.dart';
import 'package:project_11_language_learning_app/screens/number_page.dart';
import 'package:project_11_language_learning_app/screens/phrases_page.dart';
import '../Components/category.dart';

class HomePage extends StatelessWidget {
  // Defining a stateless widget named HomePage.
  const HomePage({
    super.key,
  }); // Constructor for HomePage, using a key for widget identification.

  @override
  Widget build(BuildContext context) {
    // The build method defines the UI of the widget.
    return Scaffold(
      // Scaffold provides the basic structure for the app's visual layout.
      backgroundColor: const Color(
        0xffFEF6DB,
      ), // Setting the background color of the screen.
      appBar: AppBar(
        // Adding an app bar at the top of the screen.
        backgroundColor:
            Colors.brown, // Setting the background color of the app bar.
        title: const Text(
          // Adding a title to the app bar.
          "Toku", // The text displayed in the app bar.
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ), // Styling the app bar title.
        ),
      ),
      body: Column(
        // Using a Column widget to arrange children vertically.
        children: [
          // Defining a column of child widgets for the column.
          SizedBox(height: 10),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NumbersPage();
                    //Number Category
                  },
                ),
              );
            },
            text: "Numbers",
            color: Color(0xffEF9235),
          ), // A tile for the "Numbers" category with a specific color.
          SizedBox(height: 10),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FamilyPage();
                    //Number Category
                  },
                ),
              );
            },
            text: "Family Members",
            color: Color(0xff558B37),
          ), // A tile for the "Family Members" category with a specific color.
          SizedBox(height: 10),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ColorsPage();
                  },
                ),
              );
            },
            text: "Colors",
            color: Color(0xff79359F),
          ), // A tile for the "Colors" category with a specific color.
          SizedBox(height: 10), // Adding space between the categories.
          Category(
            onTap:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PhrasesPage();
                    },
                  ),
                ),
            text: "Phrases",
            color: Color(0xff50ADC7),
          ), // A tile for the "Phrases" category with a specific color.
        ],
      ),
    );
  }
}
