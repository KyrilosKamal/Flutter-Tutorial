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
        floatingActionButton: FloatingActionButton(
          // onPressed: الدالة التي تنفذ عند الضغط على الزر (يجب تحديدها ليعمل الزر)
          onPressed: () {},

          // tooltip: نص يظهر عند تمرير الفأرة فوق الزر (مفيد لذوي الاحتياجات الخاصة)
          tooltip: 'إضافة',

          // backgroundColor: لون خلفية الزر
          backgroundColor: Colors.blue,

          // foregroundColor: لون الأيقونة أو النص داخل الزر
          foregroundColor: Colors.white,

          // elevation: ارتفاع الزر (ظل الزر)
          elevation: 6.0,

          // highlightElevation: ارتفاع الزر عند الضغط عليه
          highlightElevation: 12.0,

          // focusElevation: ارتفاع الزر عند التركيز عليه
          focusElevation: 8.0,

          // hoverElevation: ارتفاع الزر عند المرور عليه بالفأرة
          hoverElevation: 8.0,

          // disabledElevation: ارتفاع الزر عندما يكون غير مفعل
          disabledElevation: 0.0,

          // shape: شكل الزر (مثل الحواف الدائرية)
          shape: CircleBorder(),

          // mini: هل الزر صغير الحجم (true = صغير)
          mini: false,

          // isExtended: هل الزر ممتد (يظهر نص بجانب الأيقونة)
          isExtended: false,

          // clipBehavior: طريقة قص محتوى الزر
          clipBehavior: Clip.none,

          // materialTapTargetSize: حجم منطقة الضغط
          materialTapTargetSize: MaterialTapTargetSize.padded,

          // autofocus: هل يحصل الزر على التركيز تلقائياً
          autofocus: false,

          // focusNode: عقدة التركيز للتحكم في التركيز برمجياً
          focusNode: null,

          // enableFeedback: هل يصدر الزر صوت أو اهتزاز عند الضغط
          enableFeedback: true,

          // splashColor: لون تأثير الضغط على الزر
          splashColor: Colors.yellow,

          // heroTag: معرف الزر عند استخدام الانتقال البصري (Hero animation)
          heroTag: 'fab',

          // mouseCursor: شكل مؤشر الفأرة عند المرور فوق الزر
          mouseCursor: SystemMouseCursors.click,

          // child: محتوى الزر (عادة أيقونة أو نص)
          child: Icon(Icons.add),

          // visualDensity: كثافة العرض البصري للزر
        ),

        appBar: AppBar(title: Text("Buttons Widget")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              // onPressed: زر الضغط (يجب تحديده ليعمل الزر)
              onPressed: () {},

              // color: لون خلفية الزر
              color: Colors.blue,

              // textColor: لون النص داخل الزر
              textColor: Colors.white,

              // disabledColor: لون الزر عندما يكون غير مفعل
              disabledColor: Colors.grey,

              // disabledTextColor: لون النص عندما يكون الزر غير مفعل
              disabledTextColor: Colors.black38,

              // splashColor: لون تأثير الضغط على الزر
              splashColor: Colors.yellow,

              // elevation: ارتفاع الزر (ظل الزر)
              elevation: 2.0,

              // highlightElevation: ارتفاع الزر عند الضغط عليه
              highlightElevation: 8.0,

              // focusElevation: ارتفاع الزر عند التركيز عليه
              focusElevation: 4.0,

              // hoverElevation: ارتفاع الزر عند المرور عليه بالفأرة
              hoverElevation: 4.0,

              // shape: شكل الزر (مثل الحواف الدائرية)
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),

              // padding: المسافة الداخلية بين محتوى الزر وحدوده
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),

              // minWidth: أقل عرض للزر
              minWidth: 88.0,

              // height: ارتفاع الزر
              height: 36.0,

              // visualDensity: كثافة العرض البصري للزر
              visualDensity: VisualDensity.standard,

              // clipBehavior: طريقة قص محتوى الزر
              clipBehavior: Clip.none,

              // autofocus: هل يحصل الزر على التركيز تلقائياً
              autofocus: false,

              // focusNode: عقدة التركيز للتحكم في التركيز برمجياً

              // materialTapTargetSize: حجم منطقة الضغط
              materialTapTargetSize: MaterialTapTargetSize.padded,

              // animationDuration: مدة التحولات البصرية
              animationDuration: Duration(milliseconds: 200),

              // child: محتوى الزر (عادة نص أو أي ويدجت)
              child: Text('اضغط هنا'),
            ),
            SizedBox(height: 20), // مسافة بين الأزرار

            IconButton(
              // icon: الأيقونة التي ستظهر داخل الزر
              icon: Icon(Icons.thumb_up),

              // onPressed: الدالة التي تنفذ عند الضغط على الزر
              onPressed: () {},

              // iconSize: حجم الأيقونة داخل الزر
              iconSize: 24.0,

              // tooltip: نص يظهر عند تمرير الفأرة فوق الزر (مفيد لذوي الاحتياجات الخاصة)
              tooltip: 'إعجاب',

              // color: لون الأيقونة عندما يكون الزر مفعل
              color: Colors.blue,

              // splashColor: لون تأثير الضغط على الزر
              splashColor: Colors.yellow,

              // highlightColor: لون خلفية الزر عند الضغط عليه
              highlightColor: Colors.red,

              // hoverColor: لون خلفية الزر عند المرور عليه بالفأرة
              hoverColor: Colors.green,

              // focusColor: لون خلفية الزر عند التركيز عليه
              focusColor: Colors.orange,

              // disabledColor: لون الأيقونة عندما يكون الزر غير مفعل
              disabledColor: Colors.grey,

              // alignment: محاذاة الأيقونة داخل الزر
              alignment: Alignment.center,

              // padding: المسافة الداخلية بين الأيقونة وحدود الزر
              padding: EdgeInsets.all(8.0),

              // constraints: قيود الحجم للزر (العرض والارتفاع)
              constraints: BoxConstraints(minWidth: 48.0, minHeight: 48.0),

              // autofocus: هل يحصل الزر على التركيز تلقائياً
              autofocus: false,

              // focusNode: عقدة التركيز للتحكم في التركيز برمجياً
              focusNode: null,

              // enableFeedback: هل يصدر الزر صوت أو اهتزاز عند الضغط
              enableFeedback: true,

              // visualDensity: كثافة العرض البصري للزر
              visualDensity: VisualDensity.standard,

              // style: نمط الزر (متوفر في Flutter 3.3+)
              // style: نمط الزر (متوفر فقط في Flutter 3.3 أو أحدث، إذا كنت تستخدم إصدار أقدم احذف هذا السطر)
              // style: ButtonStyle(),
              // isSelected: هل الزر في حالة مختارة (متوفر فقط في Flutter 3.7 أو أحدث)
              // ملاحظة: الخاصية isSelected متاحة فقط في Flutter 3.7 وما بعده، إذا كنت تستخدم إصداراً أقدم احذف هذا السطر.
              // isSelected: false,
            ),

            SizedBox(height: 20), // مسافة بين الأزرار
          ],
        ),
      ),
    );
  }
}
