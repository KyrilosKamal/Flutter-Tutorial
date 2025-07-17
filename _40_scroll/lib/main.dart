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
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    // Adding a listener to the scroll controller to print the scroll position
    scrollController.addListener(() {
      print('Scroll position: ${scrollController.offset}');
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Scroll')),
        body: ListView(

          //root of scroll
          controller: scrollController,
          children: [
            MaterialButton(
              onPressed: () {
                scrollController.animateTo(13172, duration: Duration(seconds: 2) , curve: Curves.ease);
              },
              color: Colors.redAccent,
              child: const Text(
                "Jumt to Buttom",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),

            ...List.generate(
              200,
              (index) => Card(
                color: index.isEven ? Colors.blue : Colors.green,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Item $index',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),


            MaterialButton(
              onPressed: () {
                scrollController.animateTo(0, duration: Duration(seconds: 2) , curve: Curves.ease);
              },
              color: Colors.redAccent,
              child: const Text(
                "Jumt to Top",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*
بالطبع! في لغة Dart، غالبًا ما يتم استخدام مفهوم "التمرير" (Scroll) في تطبيقات Flutter لعرض محتوى كبير داخل مساحة محدودة. العنصر الأساسي للتمرير هو ScrollView، وهناك عدة أنواع مثل SingleChildScrollView و ListView و GridView.

سأشرح لك أهم عناصر التمرير (Scroll) في Flutter مع شرح خصائصها باللغة العربية:

1. SingleChildScrollView
يُستخدم لتمرير عنصر واحد فقط (مثل عمود أو صف).
SingleChildScrollView(
  scrollDirection: Axis.vertical, // اتجاه التمرير (عمودي أو أفقي)
  reverse: false, // عكس اتجاه التمرير
  padding: EdgeInsets.all(8.0), // المسافة حول المحتوى
  physics: BouncingScrollPhysics(), // سلوك التمرير (مثل التمرير المطاطي)
  child: Column(
    children: [ /* عناصر هنا */ ],
  ),
)
شرح الخصائص:

scrollDirection: يحدد اتجاه التمرير (عمودي أو أفقي).
reverse: إذا كان true، يبدأ التمرير من النهاية.
padding: يضيف مساحة حول المحتوى.
physics: يحدد سلوك التمرير (مثل التمرير المطاطي أو العادي).
child: العنصر الذي سيتم تمريره.
2. ListView
يُستخدم لعرض قائمة قابلة للتمرير من العناصر.
ListView(
  scrollDirection: Axis.vertical, // اتجاه التمرير
  reverse: false, // عكس التمرير
  padding: EdgeInsets.all(8.0), // المسافة حول القائمة
  physics: ClampingScrollPhysics(), // سلوك التمرير
  children: [ /* عناصر القائمة */ ],
)
شرح الخصائص:

scrollDirection: اتجاه التمرير.
reverse: عكس اتجاه التمرير.
padding: المسافة حول القائمة.
physics: سلوك التمرير.
children: عناصر القائمة.
3. GridView
لعرض شبكة قابلة للتمرير من العناصر.
GridView.count(
  crossAxisCount: 2, // عدد الأعمدة
  scrollDirection: Axis.vertical, // اتجاه التمرير
  padding: EdgeInsets.all(8.0), // المسافة حول الشبكة
  children: [ /* عناصر الشبكة */ ],
)
شرح الخصائص:

crossAxisCount: عدد الأعمدة في الشبكة.
scrollDirection: اتجاه التمرير.
padding: المسافة حول الشبكة.
children: عناصر الشبكة.
4. ScrollController
أداة للتحكم في التمرير برمجياً.
ScrollController controller = ScrollController();

ListView(
  controller: controller, // ربط الكنترولر بالقائمة
  children: [ /* عناصر */ ],
)
شرح الخصائص:

controller: يسمح بالتحكم في موضع التمرير أو الاستماع لأحداث التمرير.
5. ScrollPhysics
تحدد سلوك التمرير (مثل المطاطي أو العادي).

BouncingScrollPhysics: تمرير مطاطي (مثل iOS).
ClampingScrollPhysics: تمرير عادي (مثل Android).
AlwaysScrollableScrollPhysics: يسمح بالتمرير دائمًا حتى لو كان المحتوى صغير.
نقاط مهمة:

التمرير ضروري لعرض محتوى كبير داخل مساحة صغيرة.
يمكن تخصيص سلوك التمرير حسب الحاجة.
استخدام الكنترولر يسمح بالتحكم في التمرير برمجياً.


 */