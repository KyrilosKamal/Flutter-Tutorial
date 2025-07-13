import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // قائمة المستخدمين اللي هنعرضها في الليست
  List users = [
    {"name": "Kyrillos", "age": 30, "Phone": '+201228011332'},
    {"name": "Andrew", "age": 29, "Phone": '+201228745965'},
    {"name": "Liza", "age": 26, "Phone": '+201223578855'},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("List Generate")),
        
        // هنا بنستخدم ListView لعرض قائمة عمودية من العناصر
        body: ListView(
          // children بتستقبل List من Widgets
          children: [

            // ... => Spread Operator
            // معناها خد كل عنصر داخل الليست وافرده هنا كأنه عنصر لوحده جوه الـ ListView
            ...List.generate(
              users.length, // length: عدد المرات اللي هيتنفذ فيها الفنكشن (يعني بعدد اليوزرز)

              (index) {
                // generator: دالة بتاخد index وترجع العنصر اللي هيتبني مكانه
                
                return Card(
                  elevation: 7, // ظل وارتفاع للكارت عشان يبقى بارز عن الخلفية
                  child: ListTile(
                    // leading: العنصر اللي بيظهر في بداية الليست تايل (هنا رقم التليفون)
                    leading: Text('${users[index]['Phone']}'),

                    // title: العنوان الرئيسي للعنصر (هنا اسم المستخدم)
                    title: Text('Name: ${users[index]['name']}'),

                    // subtitle: النص الثانوي للعنصر (هنا العمر)
                    subtitle: Text('Age: ${users[index]['age']}'),
                  ),
                );
              },

              // growable: خاصية اختيارية، لو true الليست ممكن نكبرها بعد الإنشاء، القيمة الافتراضية true
              // مش مستخدمة هنا لإننا مش محددينها فهتفضل true
            ),
          ],
        ),
      ),
    );
  }
}
