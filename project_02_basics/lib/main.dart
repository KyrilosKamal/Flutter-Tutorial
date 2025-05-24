import 'package:flutter/material.dart';

void main() {
  // This is the main entry point of the application.
  // It initializes the app and runs it.
  // The runApp function takes a widget and makes it the root of the widget tree.
  // In this case, we are using MaterialApp, which is a convenience widget that wraps a number of widgets that are commonly required for material design applications.
  // The MaterialApp widget is the top-level widget that contains the entire app.
  // It provides the app with a title, theme, and other properties.
  // The home property is set to a widget that will be displayed when the app is launched.
  // In this case, we are not providing a home widget, so the app will not display anything when it is launched.
  // To display a widget, we need to set the home property to a widget.
  // For example, we can set the home property to a Scaffold widget, which provides a basic material design layout structure.
  runApp(MyApp());
  // The runApp function takes a widget and makes it the root of the widget tree.
  // In this case, we are using MaterialApp, which is a convenience widget that wraps a number of widgets that are commonly required for material design applications.
  // The MaterialApp widget is the top-level widget that contains the entire app.
  // It provides the app with a title, theme, and other properties.
  // The home property is set to a widget that will be displayed when the app is launched.
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Text text = Text("Hello, Master!");

    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),        home: Center(
        child: text,
      ),
    );
  }
}