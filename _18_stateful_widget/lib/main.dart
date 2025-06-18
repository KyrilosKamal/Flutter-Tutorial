import 'package:flutter/material.dart';

// شرح جميع الخصائص في StatelessWidget و StatefulWidget في تعليق باللغة العربية:

// StatelessWidget:
// - key: مفتاح لتعريف الودجت بشكل فريد في شجرة الودجتات (اختياري).
// - الخصائص الأخرى (مثل title): يجب أن تكون ثابتة (final) ولا تتغير بعد الإنشاء.

// StatefulWidget:
// - key: مفتاح لتعريف الودجت بشكل فريد في شجرة الودجتات (اختياري).
// - الخصائص الأخرى (مثل title): يجب أن تكون ثابتة (final) ولا تتغير بعد الإنشاء.
// - createState: دالة تنشئ كائن الحالة المرتبط بالودجت.
// - في كلاس الحالة (State):
//    - المتغيرات: متغيرات الحالة التي يمكن أن تتغير أثناء التشغيل (مثل counter).
//    - setState: دالة تُستخدم لتحديث الحالة وإعادة بناء الواجهة.
//    - widget: للوصول إلى خصائص الودجت الأصلي من داخل كلاس الحالة.
//    - build: دالة تبني واجهة المستخدم وتعتمد على الحالة الحالية.

// مقارنة:
// - StatelessWidget: ودجت ثابت، لا يحتوي على حالة متغيرة، مناسب للواجهات البسيطة.
// - StatefulWidget: ودجت متغير، يحتوي على حالة يمكن تغييرها أثناء التشغيل، مناسب للواجهات التفاعلية

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: Scaffold(
        appBar: AppBar(title: const Text('Stateful Widget Example')),
        body: Center(
          child: Column(
            children: [
              IconButton(
                onPressed: () {
                  // This is where you would handle the button press
                  // Increment the counter
                  setState(() {
                    counter++;
                  });
                },
                icon: const Icon(Icons.add),
              ),
              Text("Counter $counter"),
              IconButton(
                onPressed: () {
                  // This is where you would handle the button press
                  // Decrement the counter
                  setState(() {
                    counter--;
                  });
                },
                icon: const Icon(Icons.remove),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
