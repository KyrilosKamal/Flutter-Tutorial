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
        appBar: AppBar(title: Text("Expanded Widget")),
        body: Row(
          children: [
            // Expanded widget يستخدم لتوسيع العنصر ليأخذ المساحة المتبقية في الاتجاه الرئيسي (هنا أفقي)
            Expanded(
              // flex: يحدد نسبة المساحة التي يأخذها هذا العنصر مقارنة بباقي Expanded في نفس الاتجاه
              flex: 2, // هذا العنصر سيأخذ ضعف مساحة أي Expanded آخر flex=1
              // child: هو العنصر الذي سيتم توسيعه داخل Expanded
              child: Container(
                color: Colors.red,
                height: 100,
                child: Center(child: Text('flex: 2')),
              ),
            ),
            Expanded(
              flex: 1, // هذا العنصر سيأخذ مساحة أقل (النسبة 1)
              child: Container(
                color: Colors.green,
                height: 100,
                child: Center(child: Text('flex: 1')),
              ),
            ),
            // يمكن استخدام Expanded بدون تحديد flex (القيمة الافتراضية هي 1)
            Expanded(
              child: Container(
                color: Colors.blue,
                height: 100,
                child: Center(child: Text('flex: 1 (default)')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
