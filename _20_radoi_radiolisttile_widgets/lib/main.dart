import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? country;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Demo')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Radio(
                value: 1, // القيمة التي يمثلها هذا الراديو
                groupValue:
                    1, // القيمة الحالية للمجموعة (لتحديد الراديو المحدد)
                onChanged: (value) {
                  // دالة تستدعى عند تغيير الاختيار
                },
                activeColor: Colors.blue, // لون الراديو عند التحديد
                fillColor: MaterialStateProperty.all(
                  Colors.blue,
                ), // لون تعبئة الدائرة
                focusColor: Colors.orange, // لون الراديو عند التركيز (focus)
                hoverColor:
                    Colors.green, // لون الراديو عند المرور عليه بالفأرة (hover)
                autofocus: false, // هل يحصل الراديو على التركيز تلقائياً
                materialTapTargetSize:
                    MaterialTapTargetSize.padded, // حجم منطقة النقر
                visualDensity: VisualDensity.standard, // كثافة العرض البصري
                splashRadius: 20.0, // نصف قطر تأثير النقر (splash)
                toggleable: false, // هل يمكن إلغاء التحديد عند النقر مرة أخرى
                focusNode: null, // عقدة التركيز (focus node)
                mouseCursor:
                    SystemMouseCursors.click, // شكل مؤشر الفأرة عند المرور
              ),

              RadioListTile(
                value: "Egypt", // القيمة التي يمثلها هذا العنصر
                groupValue:
                    country, // القيمة الحالية للمجموعة (لتحديد العنصر المحدد)
                onChanged: (value) {
                  setState(() {
                    country = value;
                  }); // دالة تستدعى عند تغيير الاختيار
                },
                title: Text('Egypt'), // عنوان العنصر
                activeColor: Colors.blue, // لون الراديو عند التحديد
                selected: false, // هل العنصر محدد بصرياً
                isThreeLine: false, // هل يعرض ثلاث أسطر للنص
                dense: false, // هل يكون العنصر مضغوطاً بصرياً
                contentPadding: EdgeInsets.all(8), // الحشو الداخلي للعنصر
                controlAffinity: ListTileControlAffinity
                    .platform, // موقع الراديو (leading/trailing)
                autofocus: false, // هل يحصل العنصر على التركيز تلقائياً
                toggleable: false, // هل يمكن إلغاء التحديد عند النقر مرة أخرى
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ), // شكل العنصر (مثلاً: زوايا دائرية)
                tileColor: Colors.grey[200], // لون خلفية العنصر
                selectedTileColor: Colors.blue[50], // لون الخلفية عند التحديد
                visualDensity: VisualDensity.standard, // كثافة العرض البصري
                hoverColor: Colors.green, // لون عند المرور بالفأرة (hover)
                splashRadius: 20.0, // نصف قطر تأثير النقر (splash)
                focusNode: null, // عقدة التركيز (focus node)
                mouseCursor:
                    SystemMouseCursors.click, // شكل مؤشر الفأرة عند المرور
                enableFeedback: true, // هل يصدر اهتزاز/صوت عند التفاعل
              ),
              RadioListTile(
                value: "Jordan", // القيمة التي يمثلها هذا العنصر
                groupValue:
                    country, // القيمة الحالية للمجموعة (لتحديد العنصر المحدد)
                onChanged: (value) {
                  setState(() {
                    country = value;
                  }); // دالة تستدعى عند تغيير الاختيار
                },
                title: Text('Jordan'), // عنوان العنصر
                activeColor: Colors.blue, // لون الراديو عند التحديد
                selected: false, // هل العنصر محدد بصرياً
                isThreeLine: false, // هل يعرض ثلاث أسطر للنص
                dense: false, // هل يكون العنصر مضغوطاً بصرياً
                contentPadding: EdgeInsets.all(8), // الحشو الداخلي للعنصر
                controlAffinity: ListTileControlAffinity
                    .platform, // موقع الراديو (leading/trailing)
                autofocus: false, // هل يحصل العنصر على التركيز تلقائياً
                toggleable: false, // هل يمكن إلغاء التحديد عند النقر مرة أخرى
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ), // شكل العنصر (مثلاً: زوايا دائرية)
                tileColor: Colors.grey[200], // لون خلفية العنصر
                selectedTileColor: Colors.blue[50], // لون الخلفية عند التحديد
                visualDensity: VisualDensity.standard, // كثافة العرض البصري
                hoverColor: Colors.green, // لون عند المرور بالفأرة (hover)
                splashRadius: 20.0, // نصف قطر تأثير النقر (splash)
                focusNode: null, // عقدة التركيز (focus node)
                mouseCursor:
                    SystemMouseCursors.click, // شكل مؤشر الفأرة عند المرور
                enableFeedback: true, // هل يصدر اهتزاز/صوت عند التفاعل
              ),
            ],
          ),
        ),
      ),
    );
  }
}
