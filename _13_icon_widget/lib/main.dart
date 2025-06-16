import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Icon Widget Example")),
        body: Center(
          child: Icon(
            Icons.favorite, // نوع الأيقونة (مثال: قلب)
            size: 48.0, // حجم الأيقونة بالبكسل
            color: Colors.red, // لون الأيقونة
            semanticLabel:
                'قلب', // وصف للأيقونة لتحسين الوصولية (screen readers)
            textDirection:
                TextDirection.ltr, // اتجاه النص للأيقونة إذا كان لها معنى نصي
            shadows: [
              // ظل للأيقونة
              Shadow(
                color: Colors.black45, // لون الظل
                offset: Offset(5, 5), // إزاحة الظل أفقياً وعمودياً
                blurRadius: 10, // مدى ضبابية الظل
              ),
            ],
          ),
        ),
      ),
    );
  }
}
