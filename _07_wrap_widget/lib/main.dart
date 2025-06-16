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
        appBar: AppBar(title: Text("Wrap Widget")),
        body: Wrap(
          direction: Axis.horizontal, // اتجاه المحور الرئيسي (أفقي أو عمودي)
          alignment: WrapAlignment.start, // محاذاة العناصر على المحور الرئيسي
          runAlignment:
              WrapAlignment.end, // محاذاة الأسطر (runs) على المحور الثانوي
          crossAxisAlignment:
              WrapCrossAlignment.center, // محاذاة العناصر داخل كل سطر عمودياً
          textDirection:
              TextDirection.ltr, // اتجاه النص (من اليسار لليمين أو العكس)
          verticalDirection: VerticalDirection
              .up, // اتجاه ترتيب الأسطر (من الأسفل للأعلى أو العكس)
          clipBehavior: Clip.antiAlias, // طريقة قص العناصر الزائدة عن الحدود
          spacing: 8.0, // المسافة الأفقية بين العناصر
          runSpacing: 4.0, // المسافة العمودية بين الأسطر
          children: [
            Chip(label: Text('Flutter')),
            Chip(label: Text('Dart')),
          ],
        ),
      ),
    );
  }
}
