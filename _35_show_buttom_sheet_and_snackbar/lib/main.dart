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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                /// يقوم هذا السطر بعرض ورقة سفلية (Bottom Sheet) باستخدام المفتاح الخاص بـ Scaffold.
                ///
                /// تفاصيل الخصائص المستخدمة في showBottomSheet:
                ///
                /// - `context`:
                ///   - السياق الحالي للبناء (BuildContext) الذي يُستخدم لإنشاء محتوى الورقة السفلية.
                ///   - يُستخدم للوصول إلى عناصر واجهة المستخدم والتفاعل معها.
                ///
                /// - `builder`:
                ///   - دالة تُعيد عنصر واجهة مستخدم (Widget) يُمثل محتوى الورقة السفلية.
                ///   - في هذا المثال، يتم تمرير دالة تُعيد Container.
                ///
                /// خصائص إضافية يمكن استخدامها مع showBottomSheet (ليست مستخدمة هنا):
                ///
                /// - `backgroundColor`:
                ///   - لون خلفية الورقة السفلية.
                ///   - النوع: Color.
                ///
                /// - `elevation`:
                ///   - ارتفاع الورقة السفلية عن سطح الشاشة (ظل).
                ///   - النوع: double.
                ///
                /// - `shape`:
                ///   - شكل حدود الورقة السفلية (مثل الزوايا الدائرية).
                ///   - النوع: ShapeBorder.
                ///
                /// - `clipBehavior`:
                ///   - كيفية قص محتوى الورقة السفلية إذا تجاوز الحدود.
                ///   - النوع: Clip.
                ///
                /// - `constraints`:
                ///   - قيود الحجم للورقة السفلية.
                ///   - النوع: BoxConstraints.
                ///
                /// ملاحظة:
                /// showBottomSheet تُعيد PersistentBottomSheetController الذي يمكن استخدامه لإغلاق الورقة السفلية أو التفاعل معها لاحقاً.
                scaffoldKey.currentState!.showBottomSheet(
                  (context) => Container(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    height: 100,
                    color: Colors.redAccent,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor.",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                );
              },
              color: Colors.redAccent,
              textColor: Colors.white,
              child: Text("Show Button Sheet"),
            ),

            MaterialButton(
              minWidth: 155,
              onPressed: () {
                /// يعرض عنصر SnackBar رسالة مؤقتة في أسفل الشاشة.
                ///
                /// الخصائص المتوفرة في عنصر SnackBar:
                ///
                /// - content: عنصر واجهة المستخدم (عادةً نص) يُعرض داخل الـ SnackBar.
                ///   - المحتوى الرئيسي الذي يظهر للمستخدم.
                ///
                /// - backgroundColor: لون خلفية الـ SnackBar.
                ///   - يمكنك تخصيص لون الخلفية حسب تصميم التطبيق.
                ///
                /// - elevation: ارتفاع الـ SnackBar عن سطح الشاشة.
                ///   - يعطي تأثير الظل للـ SnackBar.
                ///
                /// - shape: شكل حدود الـ SnackBar (مثل الزوايا الدائرية).
                ///   - يمكنك تخصيص شكل الحواف.
                ///
                /// - behavior: يحدد سلوك عرض الـ SnackBar (ثابت أو عائم).
                ///   - Floating: يظهر الـ SnackBar بشكل عائم مع حواف.
                ///   - Fixed: يظهر الـ SnackBar ملتصق بأسفل الشاشة.
                ///
                /// - action: زر إجراء (SnackBarAction) يمكن للمستخدم الضغط عليه.
                ///   - يسمح بتنفيذ إجراء معين عند الضغط.
                ///
                /// - duration: مدة عرض الـ SnackBar على الشاشة.
                ///   - تحدد كم ثانية سيبقى الـ SnackBar ظاهراً.
                ///
                /// - margin: المسافة حول الـ SnackBar عند استخدام behavior: SnackBarBehavior.floating.
                ///   - يسمح بإضافة هوامش حول الـ SnackBar.
                ///
                /// - padding: المسافة الداخلية بين محتوى الـ SnackBar وحدوده.
                ///   - يمكنك تخصيص المسافة الداخلية.
                ///
                /// - width: عرض الـ SnackBar عند استخدام behavior: SnackBarBehavior.floating.
                ///   - يسمح بتحديد عرض مخصص.
                ///
                /// - onVisible: دالة تُستدعى عند ظهور الـ SnackBar.
                ///   - يمكنك تنفيذ كود معين عند ظهور الرسالة.
                ///
                /// هذه الخصائص تساعدك في تخصيص مظهر وسلوك SnackBar بما يتناسب مع احتياجات تطبيقك.
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "This is SnackBar Widget",
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.redAccent,
                    action: SnackBarAction(label: "Test of Action", onPressed: (){ print("Action"); }),
                  ),
                );
              },
              color: Colors.redAccent,
              textColor: Colors.white,
              child: Text("Show SnackBar"),
            ),
          ],
        ),
      ),
    );
  }
}
