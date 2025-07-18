// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Flutter Demo Home Page')),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Expanded(
//                 child: Text("data")
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// تطبيق Flutter بسيط للتجربة
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Launcher Icon Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('شرح تغيير Launcher Icon', textDirection: TextDirection.rtl, ),
          centerTitle: true,
        ),
        body: const IconTutorial(),
      ),
    );
  }
}

class IconTutorial extends StatelessWidget {
  const IconTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              '''
📌 خطوات تغيير Launcher Icon في Flutter باستخدام مكتبة flutter_launcher_icons:

1️⃣  إنشاء مشروع Flutter جديد:
    flutter create my_app
    cd my_app

2️⃣  إضافة المكتبة في ملف pubspec.yaml داخل قسم dev_dependencies:

    dev_dependencies:
      flutter_launcher_icons: ^0.13.1

3️⃣  إعداد الإيقونة عبر pubspec.yaml:

    flutter_icons:
      android: true
      ios: true
      image_path: "assets/icon/icon.png"

✅ تأكد من:
- الصورة مربعة (512x512 بكسل أو أعلى)
- الصيغة PNG
- وضع الصورة داخل المسار المحدد

4️⃣  لو أول مرة تضيف صور، فعلها في assets:

    flutter:
      assets:
        - assets/icon/icon.png

5️⃣  جلب الحزم:
    flutter pub get
    flutter pub add -d flutter_launcher_icons

6️⃣  توليد الأيقونات:
    flutter pub run flutter_launcher_icons:main


👉  هيتم إنشاء الأيقونات تلقائيًا لـ:
- Android في: android/app/src/main/res/
- iOS في: ios/Runner/Assets.xcassets/AppIcon.appiconset/

7️⃣  تشغيل التطبيق لرؤية الأيقونة الجديدة:
    flutter run

----------------------------------------------------
🎯 خيارات متقدمة:
- adaptive_icon_background: "#ffffff"
- adaptive_icon_foreground: "assets/icon/icon_foreground.png"
- remove_alpha_ios: true

----------------------------------------------------
💡 نصيحة:
استخدم صور PNG/SVG بجودة عالية لتجنب التشويش أو البكسلة في الأيقونة النهائية.

----------------------------------------------------
''',
              style: TextStyle(fontSize: 16, ),
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ),
    );
  }
}
