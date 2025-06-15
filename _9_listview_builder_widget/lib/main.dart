import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
    'Item 11',
    'Item 12',
    'Item 13',
    'Item 14',
    'Item 15',
    'Item 16',
    'Item 17',
    'Item 18',
    'Item 19',
    'Item 20',
    'Item 21',
    'Item 22',
    'Item 23',
    'Item 24',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        // ✅ Wrap the ListView with Scaffold
        appBar: AppBar(title: Text('ListView Builder')),
        // جميع خصائص ListView.builder مع شرحها بالعربي:
        body: ListView.builder(
          // itemBuilder: دالة تبني كل عنصر في القائمة حسب الفهرس (index)
          itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Text(items[index]));
          },
          // itemCount: عدد العناصر التي سيتم بناؤها في القائمة
          itemCount: items.length,
          // scrollDirection: اتجاه التمرير (عمودي أو أفقي)
          scrollDirection: Axis.vertical, // أو Axis.horizontal
          // reverse: إذا كانت true، يعكس ترتيب العناصر
          reverse: false,
          // controller: للتحكم في التمرير (ScrollController)
          // controller: ScrollController(),
          // primary: إذا كانت true، يستخدم هذا الـ ListView التمرير الأساسي
          primary: true,
          // physics: نوع حركة التمرير (مثل BouncingScrollPhysics)
          physics: AlwaysScrollableScrollPhysics(),
          // shrinkWrap: إذا كانت true، يأخذ ListView فقط المساحة المطلوبة لعناصره
          shrinkWrap: false,
          // padding: المسافة حول عناصر القائمة
          padding: EdgeInsets.all(8.0),
          // cacheExtent: المسافة (بالبكسل) التي يتم تحميل العناصر خارج الشاشة مسبقًا
          cacheExtent: 200.0,
          // addAutomaticKeepAlives: إذا كانت true، يحافظ تلقائيًا على حالة العناصر
          addAutomaticKeepAlives: true,
          // addRepaintBoundaries: إذا كانت true، يحسن الأداء عند إعادة رسم العناصر
          addRepaintBoundaries: true,
          // addSemanticIndexes: إذا كانت true، يضيف فهارس دلالية لتحسين الوصولية
          addSemanticIndexes: true,
          // semanticChildCount: عدد العناصر لأغراض الوصولية (عادة يساوي itemCount)
          semanticChildCount: items.length,
          // keyboardDismissBehavior: كيف يتم إخفاء لوحة المفاتيح عند التمرير
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
        ),
      ),
    );
  }
}
