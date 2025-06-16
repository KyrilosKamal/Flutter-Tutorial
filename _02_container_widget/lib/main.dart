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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Conteriner Widget")),
        body: Container(
          // width: عرض الحاوية (Container) بالبيكسل
          width: 200,
          // height: ارتفاع الحاوية بالبيكسل
          height: 100,
          // color: لون خلفية الحاوية (لا يمكن استخدامه مع decoration)
          color: Colors.blue,
          // alignment: محاذاة المحتوى داخل الحاوية
          alignment: Alignment.center,
          // padding: المسافة الداخلية بين حدود الحاوية والمحتوى
          padding: EdgeInsets.all(16),
          // margin: المسافة الخارجية بين الحاوية والعناصر الأخرى
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          // decoration: لتخصيص شكل الحاوية (حدود، زوايا دائرية، تدرج لوني...)
          // ملاحظة: لا يمكن استخدام color مع decoration مباشرة
          // decoration: BoxDecoration(
          //   color: Colors.green,
          //   borderRadius: BorderRadius.circular(12),
          //   border: Border.all(color: Colors.black, width: 2),
          //   boxShadow: [
          //     BoxShadow(
          //       color: Colors.grey.withOpacity(0.5),
          //       spreadRadius: 2,
          //       blurRadius: 5,
          //       offset: Offset(0, 3),
          //     ),
          //   ],
          // ),
          // foregroundDecoration: ديكور فوق محتوى الحاوية (غالباً للتأثيرات)
          // constraints: لتحديد قيود الحجم (أقصى وأدنى عرض وارتفاع)
          constraints: BoxConstraints(
            minWidth: 100,
            maxWidth: 300,
            minHeight: 50,
            maxHeight: 150,
          ),
          // transform: لتدوير أو تحريك أو تغيير حجم الحاوية
          transform: Matrix4.rotationZ(0),
          // transformAlignment: نقطة ارتكاز التحويل (مثلاً التدوير)
          transformAlignment: Alignment.center,
          // clipBehavior: كيف يتم قص المحتوى الزائد عن حدود الحاوية
          clipBehavior: Clip.none,
          // child: عنصر أو عناصر داخل الحاوية
          child: Text(
            'مرحبا بك في Container!',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
