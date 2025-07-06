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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dialog Alert")),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: MaterialButton(
              onPressed: () {
                showDialog(
                  
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      // elevation: ارتفاع ظل الصندوق الحواري (Dialog)، كلما زادت القيمة زاد وضوح الظل.
                      elevation: 5,

                      // title: عنوان الصندوق الحواري، يمكن أن يكون نص أو أي ويدجت آخر.
                      title: Row(
                        children: const [
                          Icon(Icons.warning_outlined, size: 27),
                          SizedBox(width: 8),
                          Text('Alert'),
                        ],
                      ),

                      // content: محتوى الصندوق الحواري، عادة نص أو ويدجت آخر لعرض الرسالة أو التفاصيل.
                      content: const Text("This is an Alert Dialog"),

                      // actions: قائمة من الأزرار أو الودجات التي تظهر أسفل الصندوق الحواري (مثل زر موافق أو إلغاء).
                      actions: [
                        TextButton(
                          onPressed: () {
                            print("ok");
                            Navigator.of(context).pop();
                          },
                          child: Text('Ok'),
                        ),
                        TextButton(
                          onPressed: () {
                            print("Cancle");
                            Navigator.of(context).pop();
                          },
                          child: Text('Cancle'),
                        ),
                      ],

                      // backgroundColor: لون خلفية الصندوق الحواري.
                      // backgroundColor: Colors.white,

                      // shape: شكل حدود الصندوق الحواري (مثل الزوايا الدائرية).
                      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

                      // titlePadding: المسافة حول العنوان.
                      // titlePadding: EdgeInsets.all(16),

                      // contentPadding: المسافة حول المحتوى.
                      // contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),

                      // actionsPadding: المسافة حول الأزرار في الأسفل.
                      // actionsPadding: EdgeInsets.only(right: 8, bottom: 8),

                      // insetPadding: المسافة بين الصندوق الحواري وحواف الشاشة.
                      // insetPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 24),

                      // clipBehavior: كيف يتم قص محتوى الصندوق الحواري إذا تجاوز الحدود.
                      // clipBehavior: Clip.antiAlias,

                      // scrollable: إذا كان المحتوى طويل، يمكن جعله قابل للتمرير.
                      // scrollable: false,
                    );
                  },
                );
              },
              textColor: Colors.white,
              color: Colors.redAccent,
              child: const Text("Click Here"),
            ),
          ),
        ],
      ),
    );
  }
}
