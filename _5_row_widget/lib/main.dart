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
        appBar: AppBar(title: Text("Row Widget")),
        body: Row(
          // الخصائص الأساسية لعنصر Row:
          // mainAxisAlignment: تحديد محاذاة العناصر أفقياً (على المحور الرئيسي)
          // مثال: MainAxisAlignment.center لجعل العناصر في المنتصف
          mainAxisAlignment: MainAxisAlignment.start,

          // mainAxisSize: تحديد حجم الـ Row على المحور الرئيسي (الأفقي)
          // MainAxisSize.max: يأخذ كل المساحة المتاحة (افتراضي)
          // MainAxisSize.min: يأخذ فقط المساحة المطلوبة للعناصر
          mainAxisSize: MainAxisSize.max,

          // crossAxisAlignment: تحديد محاذاة العناصر عمودياً (على المحور العمودي)
          // مثال: CrossAxisAlignment.center لجعل العناصر في منتصف المحور العمودي
          crossAxisAlignment: CrossAxisAlignment.center,

          // textDirection: اتجاه النص (من اليسار لليمين أو من اليمين لليسار)
          // مثال: TextDirection.ltr أو TextDirection.rtl
          textDirection: TextDirection.ltr,

          // verticalDirection: ترتيب العناصر رأسياً (من الأعلى للأسفل أو العكس)
          // مثال: VerticalDirection.down أو VerticalDirection.up
          verticalDirection: VerticalDirection.down,

          // children: قائمة العناصر التي سيتم عرضها داخل الـ Row
          children: [
            Icon(Icons.star, color: Colors.amber),
            Text('مثال على Row'),
            Icon(Icons.favorite, color: Colors.red),
          ],
        ),
      ),
    );
  }
}
