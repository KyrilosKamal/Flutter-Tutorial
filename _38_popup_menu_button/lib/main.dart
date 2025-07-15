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
        appBar: AppBar(
          title: Text("PopIp Menu Button Example"),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: "Settings",
                  onTap: () => {},
                  child: Text("Settings"),
                ),
                PopupMenuItem(
                  value: "About ",
                  onTap: () => {},
                  child: Text("About"),
                ),
                PopupMenuItem(
                  value: "Call",
                  onTap: () => {},
                  child: Text("Call"),
                ),
              ],
              onSelected: (value) => {print(value)},
            ),
          ],
        ),

        body: ListView(children: [
            
          ],
        ),
      ),
    );
  }
}


/**
 * 
 * 
 * الخصائص الأساسية
itemBuilder (إجباري)

وظيفتها: بناء عناصر القائمة

نوعها: PopupMenuItem Function(BuildContext)

dart
itemBuilder: (context) => [
  PopupMenuItem(child: Text("خيار 1")),
  PopupMenuItem(child: Text("خيار 2"))
]
onSelected

وظيفتها: تنفيذ إجراء عند اختيار عنصر

نوعها: void Function(T)

dart
onSelected: (value) {
  print("تم اختيار: $value");
}
خصائص المظهر
child

وظيفتها: عنصر واجهة مخصص بدل الأيقونة الافتراضية

نوعها: Widget?

dart
child: Icon(Icons.settings)
icon

وظيفتها: تحديد أيقونة الزر

نوعها: Widget?

dart
icon: Icon(Icons.menu)
offset

وظيفتها: تحديد موقع القائمة (الإزاحة)

نوعها: Offset

dart
offset: Offset(0, 20) // إزاحة 20 بكسل لأسفل
elevation

وظيفتها: مستوى ظل القائمة

قيمة افتراضية: 8.0

dart
elevation: 16.0
padding

وظيفتها: المساحة الداخلية حول الزر

نوعها: EdgeInsetsGeometry?

dart
padding: EdgeInsets.all(12)
color

وظيفتها: لون خلفية القائمة

نوعها: Color?

dart
color: Colors.blue[100]
shape

وظيفتها: شكل القائمة (الحواف)

نوعها: ShapeBorder?

dart
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(15)
)
خصائص السلوك
initialValue

وظيفتها: العنصر المحدد مسبقاً

نوعها: T?

dart
initialValue: "الافتراضي"
onCanceled

وظيفتها: تنفيذ إجراء عند إغلاق القائمة دون اختيار

نوعها: void Function()?

dart
onCanceled: () {
  print("تم الإغلاق دون اختيار");
}
tooltip

وظيفتها: نص تلميح الأدوات

نوعها: String?

dart
tooltip: "الخيارات المتاحة"
enabled

وظيفتها: تفعيل/تعطيل الزر

قيمة افتراضية: true

dart
enabled: false
enableFeedback

وظيفتها: تفعيل الاهتزاز/الصوت عند النقر

قيمة افتراضية: true

dart
enableFeedback: false
خصائص متقدمة
constraints

وظيفتها: تحديد حجم القائمة

نوعها: BoxConstraints?

dart
constraints: BoxConstraints(maxWidth: 200)
position

وظيفتها: تحديد اتجاه فتح القائمة

نوعها: PopupMenuPosition

dart
position: PopupMenuPosition.under
surfaceTintColor

وظيفتها: لون تظليل السطح

نوعها: Color?

dart
surfaceTintColor: Colors.yellow
shadowColor

وظيفتها: لون ظل القائمة

نوعها: Color?

dart
shadowColor: Colors.black.withOpacity(0.5)
textStyle

وظيفتها: نمط نص العناصر

نوعها: TextStyle?

dart
textStyle: TextStyle(fontWeight: FontWeight.bold)
iconSize

وظيفتها: حجم أيقونة الزر

نوعها: double?

dart
iconSize: 30
مثال شامل باستخدام أغلب الخصائص:
dart
PopupMenuButton<String>(
  itemBuilder: (context) => [
    PopupMenuItem(
      value: "edit",
      child: Text("تعديل"),
    ),
    PopupMenuDivider(),
    PopupMenuItem(
      value: "delete",
      child: Text("حذف", style: TextStyle(color: Colors.red)),
    ),
  ],
  onSelected: (value) => handleSelection(value),
  onCanceled: () => print("Cancelled"),
  icon: Icon(Icons.more_vert, size: 30),
  tooltip: "خيارات إضافية",
  elevation: 16,
  offset: Offset(0, 50),
  padding: EdgeInsets.all(15),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
    side: BorderSide(color: Colors.blue),
  ),
  color: Colors.grey[100],
  surfaceTintColor: Colors.blue[50],
  shadowColor: Colors.black54,
  constraints: BoxConstraints(minWidth: 200),
  position: PopupMenuPosition.under,
  textStyle: TextStyle(fontFamily: "Cairo"),
  iconSize: 32,
  enabled: true,
  enableFeedback: true,
)

 */