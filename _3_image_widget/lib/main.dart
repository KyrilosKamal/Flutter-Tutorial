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
        appBar: AppBar(title: Text("Image Widget")),
        body: Image(
          // image: مطلوب - مصدر الصورة (AssetImage, NetworkImage, FileImage, MemoryImage)
          //image: AssetImage('assets/images/example.png'),
          //هذه الخاصية تُستخدم في إطار Flutter لتعيين صورة من الإنترنت كمصدر للصورة في عنصر واجهة المستخدم (مثل Image أو DecorationImage).
          //NetworkImage يأخذ رابط الصورة (URL) ويقوم بتحميلها وعرضها في التطبيق.
          image: NetworkImage(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjclDv0e9IVQdcKL5CgI8DITEgglEavaKqww&s",
          ),
          // key: مفتاح للتحكم في حالة الودجت أو الوصول إليه
          key: Key('imageKey'),

          // frameBuilder: دالة لبناء إطار مخصص حول الصورة أثناء تحميلها
          frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
            return child;
          },

          // loadingBuilder: دالة تعرض ويدجت أثناء تحميل الصورة (مثلاً مؤشر تحميل)
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(child: CircularProgressIndicator());
          },

          // errorBuilder: دالة تعرض ويدجت عند حدوث خطأ في تحميل الصورة
          errorBuilder: (context, error, stackTrace) {
            return Icon(Icons.error);
          },

          // semanticLabel: نص وصفي للصورة لتحسين الوصولية
          semanticLabel: 'مثال لصورة',

          // excludeFromSemantics: استبعاد الصورة من الوصولية (true/false)
          excludeFromSemantics: false,

          // width: عرض الصورة
          width: 200,

          // height: ارتفاع الصورة
          height: 200,

          // color: لون يُطبق على الصورة (مع blendMode)
          color: Colors.red.withOpacity(0.5),

          // colorBlendMode: طريقة دمج اللون مع الصورة
          colorBlendMode: BlendMode.colorBurn,

          // fit: كيف يتم ملء الصورة داخل المساحة المتاحة (BoxFit)
          fit: BoxFit.cover,

          // alignment: محاذاة الصورة داخل الحاوية
          alignment: Alignment.center,

          // repeat: تكرار الصورة إذا كانت أصغر من الحاوية
          repeat: ImageRepeat.noRepeat,

          // centerSlice: لتقسيم الصورة إلى 9 أجزاء (لصور قابلة للتمدد)
          // centerSlice: Rect.fromLTWH(10, 10, 20, 20),

          // matchTextDirection: عكس الصورة حسب اتجاه النص (true/false)
          matchTextDirection: false,

          // gaplessPlayback: منع وميض الصورة عند تغييرها (true/false)
          gaplessPlayback: false,

          // filterQuality: جودة تصفية الصورة (FilterQuality.low/medium/high/none)
          filterQuality: FilterQuality.low,

          // isAntiAlias: تفعيل التنعيم للصورة (true/false)
          isAntiAlias: false,
        ),
      ),
    );
  }
}
