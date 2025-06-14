import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Text Widget")),
        body: Text(
          "data",
          // style: لتحديد نمط النص مثل اللون والحجم والخط
          style: TextStyle(
            // color: لون النص
            color: Colors.black,
            // backgroundColor: لون خلفية النص
            backgroundColor: Colors.yellow,
            // fontSize: حجم الخط
            fontSize: 20.0,
            // fontWeight: سمك الخط (bold, normal, ...)
            fontWeight: FontWeight.bold,
            // fontStyle: نمط الخط (italic, normal)
            fontStyle: FontStyle.italic,
            // letterSpacing: المسافة بين الحروف
            letterSpacing: 2.0,
            // wordSpacing: المسافة بين الكلمات
            wordSpacing: 4.0,
            // textBaseline: خط الأساس للنص (alphabetic, ideographic)
            textBaseline: TextBaseline.alphabetic,
            // height: ارتفاع السطر (نسبة إلى حجم الخط)
            height: 1.5,
            // locale: اللغة والمنطقة للخط
            locale: Locale('ar', 'EG'),
            // foreground: رسم النص باستخدام Paint (مثلاً تدرج لوني)
            // foreground: Paint()..color = Colors.red,
            // background: رسم خلفية النص باستخدام Paint
            // background: Paint()..color = Colors.green,
            // shadows: إضافة ظل للنص
            shadows: [
              Shadow(color: Colors.grey, offset: Offset(2, 2), blurRadius: 2),
            ],
            // fontFamily: اسم الخط المستخدم
            fontFamily: 'Roboto',
            // decoration: تزيين النص (underline, overline, lineThrough)
            decoration: TextDecoration.underline,
            // decorationColor: لون التزيين
            decorationColor: Colors.red,
            // decorationStyle: نمط التزيين (dashed, dotted, solid, ...)
            decorationStyle: TextDecorationStyle.dashed,
            // decorationThickness: سماكة التزيين
            decorationThickness: 2.0,
            // debugLabel: تسمية للتصحيح فقط
            debugLabel: 'نمط النص',
            // fontFamilyFallback: قائمة خطوط احتياطية
            fontFamilyFallback: ['Arial', 'Tahoma'],
            // package: اسم الحزمة إذا كان الخط من حزمة خارجية
            // package: 'my_package',
          ),
          // textAlign: لمحاذاة النص (مثلاً: center, left, right)
          textAlign: TextAlign.start,
          // textDirection: اتجاه النص (مثلاً: من اليمين لليسار أو العكس)
          textDirection: TextDirection.ltr,
          // locale: لتحديد اللغة والمنطقة للنص
          locale: Locale('en', 'US'),
          // softWrap: هل يتم لف النص تلقائياً إذا كان طويلاً
          softWrap: true,
          // overflow: ماذا يحدث إذا تجاوز النص المساحة (ellipsis, fade, clip)
          overflow: TextOverflow.clip,
          // maxLines: الحد الأقصى لعدد الأسطر للنص
          maxLines: 1,
          // semanticsLabel: نص بديل لتحسين الوصولية
          semanticsLabel: "data",
          // strutStyle: لتحديد ارتفاع السطر وثباته
          strutStyle: StrutStyle(),
          // selectionColor: لون تحديد النص عند التحديد (يتطلب SelectableText غالباً)
          // selectionColor: Colors.blue, // غير مدعوم مباشرة في Text
        ),
      ),
    );
  }
}
