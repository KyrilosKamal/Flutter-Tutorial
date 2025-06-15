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
      home: Scaffold(
        appBar: AppBar(title: const Text('Card Widget Example')),
        body: Center(
          child: Card(
            color: Colors.amber, // لون خلفية الكارد
            elevation: 8, // ارتفاع الظل (الظل أسفل الكارد)
            shadowColor: Colors.red, // لون ظل الكارد
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                20,
              ), // شكل الحواف (دائرية هنا)
              side: BorderSide(color: Colors.blue, width: 2), // حدود الكارد
            ),
            margin: EdgeInsets.all(16), // المسافة حول الكارد
            clipBehavior: Clip.antiAlias, // كيف يتم قص المحتوى الزائد عن الحواف
            surfaceTintColor:
                Colors.green, // لون تأثير السطح (يظهر في بعض الثيمات)
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'كل خصائص Card',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'color: لون الخلفية\n'
                    'elevation: ارتفاع الظل\n'
                    'shadowColor: لون الظل\n'
                    'shape: شكل الحواف والحدود\n'
                    'margin: المسافة حول الكارد\n'
                    'clipBehavior: طريقة قص المحتوى\n'
                    'surfaceTintColor: لون تأثير السطح',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
