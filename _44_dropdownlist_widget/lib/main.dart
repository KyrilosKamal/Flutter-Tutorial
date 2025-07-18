// استيراد مكتبة Flutter الخاصة بالتصميم والـ Widgets
import 'package:flutter/material.dart';

// دالة البداية للتطبيق، بتشغل الـ Widget الرئيسي MyApp
void main() {
  runApp(const MyApp());
}

// تعريف كلاس MyApp كـ StatefulWidget علشان نقدر نغير حالته
class MyApp extends StatefulWidget {
  const MyApp({super.key}); // كونستراكتور مع مفتاح الـ Widget

  @override
  State<MyApp> createState() => _MyAppState(); // بيرجع الحالة المرتبطة بـ MyApp
}

// الكلاس اللي بيمثل الحالة الخاصة بـ MyApp
class _MyAppState extends State<MyApp> {
  // تعريف List تحتوي على عناصر الـ Dropdown
  List itemsList = ["item1", "item2", "item3", "item4", "item5"];

  // متغير بيحتفظ بالقيمة المختارة من الـ Dropdown
  String? selectedItem = "item1";

  // الميثود اللي بترسم واجهة المستخدم
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // بيغلف التطبيق كله بواجهة Material Design
      title: 'Flutter Demo', // عنوان التطبيق (للـ Debug بس)
      theme: ThemeData( // تحديد الثيم أو الشكل العام للتطبيق
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // تعيين اللون الأساسي
      ),
      home: Scaffold( // الحاوية الأساسية للشاشة
        appBar: AppBar(title: const Text('Flutter Demo Home Page')), // شريط التطبيق من فوق
        body: Center( // بيخلي المحتوى في منتصف الشاشة
          child: DropdownButton( // ويدجيت Dropdown لعرض الاختيارات
            value: selectedItem, // القيمة المختارة حاليًا
            items: itemsList.map((item) { // تحويل الـ List لمجموعة عناصر Dropdown
              return DropdownMenuItem( // كل عنصر DropdownMenuItem
                  value: item, // القيمة اللي هترجع لما يتم اختيار العنصر
                  child: Text(item) // النص اللي هيتعرض في الـ Dropdown
              );
            }).toList(), // نحول الـ Iterable لقائمة

            onChanged: (value) { // الميثود اللي بتتنفذ لما المستخدم يختار قيمة
              setState(() { // نحدث حالة الـ Widget
                selectedItem = value as String?; // نخزن القيمة الجديدة المختارة
              });
            },
          ),
        ),
      ),
    );
  }
}
