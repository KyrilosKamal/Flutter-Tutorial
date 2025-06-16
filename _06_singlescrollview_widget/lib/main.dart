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
      home: SingleChildScrollView(
        // scrollDirection: اتجاه التمرير (عمودي أو أفقي)
        scrollDirection: Axis.vertical, // يمكن تغييره إلى Axis.horizontal
        // reverse: عكس اتجاه التمرير
        reverse: false, // إذا true يبدأ التمرير من الأسفل للأعلى
        // padding: إضافة مسافة حول المحتوى
        padding: const EdgeInsets.all(16), // مسافة 16 من جميع الجهات
        // primary: هل هذا هو ScrollView الأساسي في الشاشة
        primary: true, // إذا كان هناك ScrollView واحد فقط في الشاشة
        // physics: سلوك التمرير (مثل bounce أو عادي)
        physics: const BouncingScrollPhysics(), // يعطي تأثير bounce عند التمرير
        // controller: متحكم التمرير للتحكم أو الاستماع للتمرير
        //controller: ScrollController(),

        // clipBehavior: طريقة قص المحتوى الزائد عن حدود الـ ScrollView
        clipBehavior: Clip.hardEdge, // الافتراضي، يقص المحتوى الزائد
        // child: عنصر واحد فقط يتم تمريره داخل الـ ScrollView
        child: Column(
          children: List.generate(
            60,
            (index) => Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              height: 60,
              color: Colors.blue[(index % 9 + 1) * 100],
              child: Center(
                child: Text(
                  'عنصر رقم ${index + 1}',
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
