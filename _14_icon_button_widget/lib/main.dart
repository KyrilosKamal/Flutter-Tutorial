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
        appBar: AppBar(title: Text('IconButton Example')),
        body: Center(
          child: IconButton(
            icon: Icon(Icons.favorite), // الأيقونة التي ستظهر داخل الزر
            iconSize: 48.0, // حجم الأيقونة
            color: Colors.red, // لون الأيقونة
            splashColor: Colors.blue, // لون تأثير النقر (splash)
            highlightColor: Colors.green, // لون تأثير الضغط المطول
            disabledColor: Colors.grey, // لون الأيقونة عندما يكون الزر غير مفعل
            onPressed: () {
              // الدالة التي تنفذ عند الضغط على الزر
              print('IconButton Pressed');
            },
            tooltip:
                'إعجاب', // نص يظهر عند تمرير المؤشر فوق الزر (في الويب أو سطح المكتب)
            alignment: Alignment.center, // محاذاة الأيقونة داخل الزر
            autofocus: false, // إذا كان الزر يحصل على التركيز تلقائياً
            focusColor: Colors.orange, // لون تأثير التركيز
            hoverColor: Colors.purple, // لون تأثير التحويم (hover)
            enableFeedback:
                true, // تفعيل أو تعطيل الأصوات والاهتزازات عند الضغط
            constraints: BoxConstraints(
              minWidth: 48,
              minHeight: 48,
            ), // قيود الحجم للزر
            padding: EdgeInsets.all(8.0), // المسافة حول الأيقونة داخل الزر
            visualDensity: VisualDensity.comfortable, // كثافة العرض البصري للزر
            isSelected: false, // إذا كان الزر في حالة مختارة (لأزرار التبديل)
            selectedIcon: Icon(
              Icons.favorite_border,
            ), // الأيقونة عند التحديد (لأزرار التبديل)
            focusNode:
                null, // عقدة التركيز (FocusNode) إذا كنت تريد التحكم بالتركيز يدوياً
            mouseCursor:
                SystemMouseCursors.click, // شكل مؤشر الفأرة عند المرور فوق الزر
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.white,
              ), // لون خلفية الزر
              elevation: MaterialStateProperty.all(2), // ارتفاع الزر (الظل)
            ), // نمط الزر (متوفر في Flutter 3.7+)
          ),
        ),
      ),
    );
  }
}
