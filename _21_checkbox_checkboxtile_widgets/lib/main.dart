import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool status = false;
  bool checkCountry = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Checkbox Widget')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Checkbox(
                value: status, // القيمة الحالية (صح أو خطأ)
                onChanged: (bool? newValue) {
                  // دالة التغيير عند الضغط
                  setState(() {
                    status = newValue!;
                  });
                },
                activeColor: Colors.blue, // لون المربع عند التفعيل
                checkColor: Colors.white, // لون علامة الصح
                tristate: false, // هل يقبل ثلاث حالات (صح، خطأ، غير محدد)
                autofocus: false, // هل يحصل على التركيز تلقائياً
                materialTapTargetSize:
                    MaterialTapTargetSize.padded, // حجم منطقة اللمس
                mouseCursor:
                    SystemMouseCursors.click, // شكل مؤشر الفأرة عند المرور
                hoverColor: Colors.green, // لون الخلفية عند المرور بالفأرة
                splashRadius: 20.0, // نصف قطر تأثير الضغط
                visualDensity: VisualDensity.standard, // كثافة العرض البصري
                focusNode: null, // عقدة التركيز (FocusNode)
                side: BorderSide(
                  color: Colors.black,
                  width: 2,
                ), // شكل حدود المربع
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ), // شكل المربع
                fillColor: WidgetStateProperty.all(
                  Colors.yellow,
                ), // لون تعبئة المربع حسب الحالة
                overlayColor: WidgetStateProperty.all(
                  Colors.purple,
                ), // لون التراكب عند الضغط أو المرور
                isError: false, // هل هناك خطأ (يغير لون الحدود)
              ),

              CheckboxListTile(
                value: checkCountry, // القيمة الحالية (صح أو خطأ)
                onChanged: (bool? newValue) {
                  setState(() {
                    checkCountry = newValue!;
                  });
                }, // دالة التغيير عند الضغط
                title: Text('اختر الدولة'), // العنوان الرئيسي للبلاطة
                subtitle: Text('هذا نص فرعي'), // نص فرعي أسفل العنوان
                secondary: Icon(
                  Icons.flag,
                ), // أيقونة أو عنصر ثانوي بجانب المربع
                isThreeLine:
                    false, // هل يظهر ثلاث أسطر (العنوان + النص الفرعي + سطر إضافي)
                dense: false, // هل تكون البلاطة مضغوطة (أقل ارتفاعاً)
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                ), // الحشو الداخلي للبلاطة
                selected: checkCountry, // هل البلاطة محددة (يغير لون النص)
                activeColor: Colors.blue, // لون المربع عند التفعيل
                checkColor: Colors.white, // لون علامة الصح
                tileColor: Colors.yellow[50], // لون خلفية البلاطة
                selectedTileColor: Colors.green[100], // لون الخلفية عند التحديد
                autofocus: false, // هل يحصل على التركيز تلقائياً
                controlAffinity: ListTileControlAffinity
                    .leading, // مكان المربع (بداية أو نهاية البلاطة)
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ), // شكل البلاطة
                side: BorderSide(
                  color: Colors.black,
                  width: 2,
                ), // شكل حدود المربع
                visualDensity: VisualDensity.standard, // كثافة العرض البصري
                focusNode: null, // عقدة التركيز (FocusNode)
                hoverColor: Colors.green, // لون الخلفية عند المرور بالفأرة
                splashRadius: 20.0, // نصف قطر تأثير الضغط
                fillColor: WidgetStateProperty.all(
                  Colors.yellow,
                ), // لون تعبئة المربع حسب الحالة
                overlayColor: WidgetStateProperty.all(
                  Colors.purple,
                ), // لون التراكب عند الضغط أو المرور
                mouseCursor:
                    SystemMouseCursors.click, // شكل مؤشر الفأرة عند المرور
                isError: false, // هل هناك خطأ (يغير لون الحدود)
                enabled: true, // هل البلاطة مفعلة أم معطلة
                // controlAffinity: ListTileControlAffinity.platform, // مكان المربع حسب النظام
              ),
            ],
          ),
        ),
      ),
    );
  }
}
