import 'package:flutter/material.dart';

void main() {
  runApp( HelloWorldApp());
}


// Two types of Widgets in Flutter:
// 1. StatelessWidget: A widget that does not require mutable state.
//    Stateless widgets are immutable, meaning their properties can't change.
//    They are used when the UI does not depend on any data that can change over time.
//    Stateless widgets are typically used for static content or when the UI is built once and does not need to be updated.
//    Example: A simple text widget that displays "Hello Master!".

class HelloWorldApp extends StatelessWidget {
  const HelloWorldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        appBar: AppBar(
        title: Text("Stateless Widget Example"),
        backgroundColor: Colors.blue,
      ),
        body: Center(
          child: Text('Hello Master!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Action to perform when the button is pressed
          },
          backgroundColor: Colors.blue,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
// 2. StatefulWidget: A widget that does require mutable state.
//    Stateful widgets are mutable, meaning their properties can change over time.
//    They are used when the UI needs to be updated based on user interactions or other events.
//    Stateful widgets are typically used for dynamic content or when the UI needs to be rebuilt based on changes in data.
//    Example: A counter widget that increments a number when a button is pressed.

