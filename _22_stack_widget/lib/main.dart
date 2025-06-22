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
        appBar: AppBar(title: const Text('Flutter Demo Home Page')),
        body: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  // key: مفتاح لتعريف الـ Stack بشكل فريد في الشجرة
                  // alignment: يحدد محاذاة العناصر داخل الـ Stack (مثلاً Alignment.center)
                  // textDirection: اتجاه النص (مثلاً TextDirection.ltr أو rtl)
                  // fit: كيف يتم تغيير حجم الـ Stack (StackFit.loose أو expand)
                  // clipBehavior: كيف يتم قص العناصر التي تخرج عن حدود الـ Stack (Clip.none أو Clip.hardEdge)
                  // children: قائمة العناصر التي سيتم تكديسها فوق بعضها البعض
                  alignment: Alignment.center,
                  textDirection: TextDirection.ltr,
                  fit: StackFit.loose,
                  clipBehavior: Clip.hardEdge,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.red,
                      child: const Center(child: Text('Container 1')),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.green,
                      child: const Center(child: Text('Container 2')),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      child: const Center(child: Text('Container 3')),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
