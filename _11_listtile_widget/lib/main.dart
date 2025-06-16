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
        appBar: AppBar(title: Text('List Tile Example')),
        body: Card(
          child: ListTile(
            leading: Icon(
              Icons.account_circle,
            ), // أيقونة أو صورة تظهر في بداية الـ ListTile
            title: Text('اسم المستخدم'), // العنوان الرئيسي
            subtitle: Text('هذا هو النص الفرعي'), // نص فرعي أسفل العنوان
            trailing: Icon(
              Icons.arrow_forward,
            ), // أيقونة أو عنصر يظهر في نهاية الـ ListTile
            isThreeLine: true, // إذا كان true يسمح بعرض ثلاث أسطر للنصوص
            dense: false, // إذا كان true يجعل الـ ListTile أقل ارتفاعاً
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ), // المسافة حول محتوى الـ ListTile
            enabled: true, // إذا كان false يجعل الـ ListTile غير نشط (رمادي)
            selected: false, // إذا كان true يظهر الـ ListTile كأنه محدد
            onTap: () {
              // ينفذ عند الضغط على الـ ListTile
              print('تم الضغط');
            },
            onLongPress: () {
              // ينفذ عند الضغط المطول
              print('ضغط مطول');
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ), // شكل حدود الـ ListTile
            tileColor: Colors.grey[200], // لون خلفية الـ ListTile
            selectedTileColor: Colors.blue[100], // لون الخلفية عند التحديد
            focusColor: Colors.orange[100], // لون الخلفية عند التركيز
            hoverColor:
                Colors.green[100], // لون الخلفية عند المرور بالماوس (ويب فقط)
            visualDensity:
                VisualDensity.comfortable, // كثافة العناصر داخل الـ ListTile
            horizontalTitleGap: 16.0, // المسافة الأفقية بين leading والعنوان
            minVerticalPadding:
                8.0, // الحد الأدنى للمسافة العمودية حول العنوان والنص الفرعي
            minLeadingWidth: 40.0, // الحد الأدنى لعرض عنصر leading
          ),
        ),
      ),
    );
  }
}
