import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppState());
}

class AppState extends StatefulWidget {
  const AppState({super.key});
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<AppState> {
  bool value = false;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Switch and SwitchListTile Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SwitchListTile(
                value: value,
                onChanged: (bool newValue) {
                  setState(() {
                    value = newValue;
                  });
                },
                title: Text('العنوان (title): النص الرئيسي بجانب السويتش'),
                subtitle: Text('الوصف (subtitle): نص إضافي أسفل العنوان'),
                secondary: Icon(
                  Icons.lightbulb,
                ), // أيقونة أو ويدجت تظهر بجانب السويتش
                isThreeLine: false, // إذا كان true، يظهر subtitle في ثلاثة أسطر
                dense: false, // إذا كان true، يقلل من ارتفاع العنصر
                contentPadding: EdgeInsets.all(8.0), // المسافة حول محتوى العنصر
                selected:
                    value, // إذا كان true، يغير لون النص والأيقونة حسب الثيم
                autofocus: false, // إذا كان true، يحصل على التركيز تلقائياً
                activeColor: Colors.deepPurple, // لون السويتش عند التفعيل
                activeTrackColor:
                    Colors.deepPurpleAccent, // لون المسار عند التفعيل
                inactiveThumbColor:
                    Colors.grey, // لون زر السويتش عند عدم التفعيل
                inactiveTrackColor:
                    Colors.black12, // لون المسار عند عدم التفعيل
                tileColor: Colors.white, // لون خلفية العنصر
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ), // شكل العنصر
                controlAffinity: ListTileControlAffinity
                    .platform, // مكان السويتش (leading أو trailing)
                enableFeedback: true, // إذا كان true، يصدر اهتزاز عند التفاعل
                // enabled: true, // إذا كان false، يصبح السويتش غير نشط
              ),

              Switch(
                value: value, // القيمة الحالية للمفتاح (مفعل أو غير مفعل)
                onChanged: (bool newValue) {
                  // دالة تُستدعى عند تغيير الحالة
                  setState(() {
                    value = newValue;
                  });
                },
                activeColor: Colors.green, // لون المفتاح عند التفعيل
                activeTrackColor: Colors.greenAccent, // لون المسار عند التفعيل
                inactiveThumbColor: Colors.grey, // لون المفتاح عند عدم التفعيل
                inactiveTrackColor:
                    Colors.black12, // لون المسار عند عدم التفعيل
                activeThumbImage: null, // صورة تظهر على المفتاح عند التفعيل
                inactiveThumbImage:
                    null, // صورة تظهر على المفتاح عند عدم التفعيل
                materialTapTargetSize:
                    MaterialTapTargetSize.padded, // حجم منطقة اللمس
                dragStartBehavior:
                    DragStartBehavior.start, // سلوك السحب عند بدء التفاعل
                mouseCursor: SystemMouseCursors
                    .click, // شكل مؤشر الفأرة عند المرور فوق المفتاح
                focusColor: Colors.blue, // لون الإطار عند التركيز (focus)
                hoverColor: Colors.blueAccent, // لون الإطار عند المرور بالفأرة
                autofocus: false, // هل يحصل المفتاح على التركيز تلقائياً
                focusNode: null, // عقدة التركيز (FocusNode) للمفتاح
                splashRadius: 24.0, // نصف قطر تأثير النقر (splash)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
