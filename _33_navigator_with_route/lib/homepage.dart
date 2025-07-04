import 'package:_33_navigator_with_route/contactus.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigator with Route Example")),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
              child: MaterialButton(
                minWidth: double.infinity,
                onPressed: () {
                  Navigator.of(
                    context,
                  ).pushNamed("about");
                },
                color: Colors.amber,
                child: Text(
                  "About Us",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
              child: MaterialButton(
                minWidth: double.infinity,
                onPressed: () {
                  Navigator.of(
                    context,
                  ).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => ContactUs()), (route) => false,);
                },
                color: Colors.amber,
                child: Text(
                  "Contact Us",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




// Navigator.pushNamed(context, {String routeName, Object? arguments}) properties:
//
// 1. context (BuildContext): السياق الحالي للتطبيق، يُستخدم لتحديد مكان وجودك في شجرة الواجهات.
// 2. routeName (String): اسم المسار (Route) الذي تريد الانتقال إليه، يجب أن يكون معرفًا في routes في MaterialApp.
// 3. arguments (Object?): وسيط اختياري، يمكنك من خلاله إرسال بيانات إلى الصفحة الجديدة.
//
// شرح الخصائص بالعربي:
//
// - context: هو كائن يُمثل مكانك الحالي في التطبيق، ويُستخدم لإدارة التنقل بين الصفحات.
// - routeName: هو اسم المسار الذي تريد الانتقال إليه، ويجب أن يكون معرفًا مسبقًا في routes.
// - arguments: يمكنك إرسال أي بيانات (مثل رقم أو نص أو كائن) إلى الصفحة الجديدة عبر هذا الوسيط.
//
// مثال:
// Navigator.pushNamed(
//   context,
//   '/details',
//   arguments: {'id': 5, 'name': 'Ahmed'},
// );