import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: 'Bitcount',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Custom Font Example'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Font Example', style: TextStyle(fontSize: 30))],
          ),
        ),
      ),
    );
  }
}


// خطوات إضافة أكثر من نوع خط داخل نفس الـ fontFamily في Flutter:

// 1. ضع ملفات الخطوط داخل مجلد المشروع مثلاً: assets/fonts

// 2. افتح pubspec.yaml وأضف تعريف الخط بأنواعه المختلفة:
/*
flutter:
  fonts:
    - family: MyCustomFont
      fonts:
        - asset: assets/fonts/MyFont-Regular.ttf
          weight: 400    # Regular
        - asset: assets/fonts/MyFont-Medium.ttf
          weight: 500    # Medium
        - asset: assets/fonts/MyFont-Bold.ttf
          weight: 700    # Bold
        - asset: assets/fonts/MyFont-Italic.ttf
          style: italic  # Italic
*/

// 3. بعد التعديل نفذ الأمر التالي لتحديث الـ dependencies:
// flutter pub get

// 4. لاستخدام الخط في الواجهة:
/*
Text(
  'مثال على خط مخصص',
  style: TextStyle(
    fontFamily: 'MyCustomFont',           // اسم الـ family كما عرفته
    fontWeight: FontWeight.bold,          // يستخدم ملف الـ Bold تلقائيًا
    fontStyle: FontStyle.italic,          // يستخدم ملف الـ Italic لو متاح
    fontSize: 20,
  ),
);
*/

// ✅ ملاحظات:
// - لازم توفر كل ملف خط مطابق للـ weight أو الـ style اللي عاوز تستخدمه.
// - لو نسيت تضيف وزن معين هيستخدم الـ Regular بشكل افتراضي.
// - تقدر تضيف Regular, Medium, Bold, Italic, BoldItalic وغيرها حسب ملفات الخط اللي عندك.
