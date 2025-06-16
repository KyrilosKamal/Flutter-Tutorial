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
        appBar: AppBar(title: Text("Column Widget")),
        body: Center(
          child: Column(
            // mainAxisAlignment: ترتيب العناصر عموديًا (مثلاً في المنتصف أو البداية أو النهاية)
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: حجم العمود على المحور الرئيسي (max يأخذ كل المساحة، min يأخذ أقل مساحة ممكنة)
            mainAxisSize: MainAxisSize.max,
            // crossAxisAlignment: ترتيب العناصر أفقيًا (مثلاً في المنتصف أو البداية أو النهاية)
            crossAxisAlignment: CrossAxisAlignment.center,
            // textDirection: اتجاه النص (من اليمين لليسار أو من اليسار لليمين)
            textDirection: TextDirection.ltr,
            // verticalDirection: اتجاه ترتيب العناصر عموديًا (من الأعلى للأسفل أو العكس)
            verticalDirection: VerticalDirection.down,
            // textBaseline: يستخدم لمحاذاة النصوص على نفس الخط الأساسي (مفيد مع crossAxisAlignment.baseline)
            textBaseline: TextBaseline.alphabetic,
            // children: العناصر التي سيتم عرضها داخل العمود
            children: <Widget>[
              Text('العنصر الأول'),
              Text('العنصر الثاني'),
              Text('العنصر الثالث'),
              Text('العنصر الرابع'),
            ],
          ),
        ),
      ),
    );
  }
}
