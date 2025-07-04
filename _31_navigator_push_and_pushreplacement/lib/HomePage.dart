import 'package:_31_navigator_push_and_pushreplacement/aboutus.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => AboutUs(),
              ));
            },
            child: Text('Go to About Us'),
          ),
        ),
      ),
    );
  }

}


/**
 * 
 * Navigator.push():
 * - context: السياق الحالي للبناء (BuildContext) الذي يُستخدم لتحديد مكان التنقل في شجرة الواجهات.
 * - route: هو الكائن الذي يحدد الصفحة الجديدة (عادة MaterialPageRoute أو PageRoute) التي سيتم الانتقال إليها.
 * - rootNavigator: (اختياري) إذا كان true، يستخدم الـ Navigator الجذري بدلاً من الأقرب.
 * - result: (اختياري) القيمة التي يمكن إرجاعها عند العودة من الصفحة الجديدة.
 * 
 * Navigator.pushReplacement():
 * - context: السياق الحالي للبناء (BuildContext).
 * - route: الصفحة الجديدة (Route) التي سيتم استبدال الصفحة الحالية بها.
 * - rootNavigator: (اختياري) إذا كان true، يستخدم الـ Navigator الجذري.
 * - result: (اختياري) القيمة التي سيتم إرجاعها للصفحة السابقة التي تم استبدالها.
 * 
 * شرح الخصائص:
 * - context (السياق): هو المرجع الذي يحدد مكانك في شجرة الواجهات، ويُستخدم لمعرفة أي Navigator سيتم استخدامه.
 * - route (المسار): هو الكائن الذي يمثل الصفحة الجديدة التي تريد الانتقال إليها، مثل MaterialPageRoute.
 * - rootNavigator (الملاح الجذري): إذا كان true، سيتم استخدام الـ Navigator الرئيسي في التطبيق، وليس الأقرب فقط.
 * - result (النتيجة): يمكنك إرسال قيمة عند العودة من الصفحة الجديدة، أو عند استبدال الصفحة، ليتم استقبالها في الصفحة السابقة.
 */