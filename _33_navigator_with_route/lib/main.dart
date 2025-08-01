import 'package:_33_navigator_with_route/aboutus.dart';
import 'package:_33_navigator_with_route/contactus.dart';
import 'package:_33_navigator_with_route/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomePage(),
      routes: {
        "home" : (context) => HomePage(),
        "about" : (context) => AboutUs(),
        "contactus" : (context) => ContactUs(),
      },
    );
  }
}
