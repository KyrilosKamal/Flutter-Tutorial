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
        appBar: AppBar(title: const Text('ListView Example')),
        body: ListView(
          // children: قائمة من العناصر (widgets) تظهر في الـ ListView.
          scrollDirection: Axis.vertical,
          // reverse: إذا كانت true، يعكس ترتيب العناصر.
          reverse: false,
          // controller: للتحكم في التمرير (ScrollController).
          controller: null,
          // primary: إذا كانت true، يستخدم هذا الـ ListView التمرير الأساسي.
          primary: true,
          // physics: نوع حركة التمرير (مثل BouncingScrollPhysics).
          physics: AlwaysScrollableScrollPhysics(),
          // shrinkWrap: إذا كانت true، يأخذ الـ ListView فقط المساحة المطلوبة لعناصره.
          shrinkWrap: false,
          // padding: المسافة حول العناصر داخل الـ ListView.
          padding: EdgeInsets.all(8.0),
          // itemExtent: ارتفاع أو عرض كل عنصر إذا كانت كل العناصر بنفس الحجم.
          itemExtent: null,
          // prototypeItem: عنصر نموذجي لتحديد حجم العناصر.
          prototypeItem: null,
          // cacheExtent: المسافة التي يتم تحميل العناصر فيها مسبقاً خارج الشاشة.
          cacheExtent: 200.0,
          // semanticChildCount: عدد العناصر لأغراض الوصول (Accessibility).
          semanticChildCount: 3,
          // keyboardDismissBehavior: كيف يتم إخفاء لوحة المفاتيح عند التمرير.
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
          // restorationId: معرف لاستعادة حالة التمرير.
          restorationId: 'listViewExample',
          // clipBehavior: كيف يتم قص العناصر الزائدة عن الحدود.
          clipBehavior: Clip.hardEdge,
          // children: قائمة من العناصر (widgets) تظهر في الـ ListView.
          children: [
            ListTile(title: Text('Item 1')),
            Image.network(
              'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            Text("Test Text 1", style: TextStyle(fontSize: 24)),
            ListTile(title: Text('Item 2')),
            Image.network(
              'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            ListTile(title: Text('Item 1')),
            Image.network(
              'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            Text("Test Text 1", style: TextStyle(fontSize: 24)),
            ListTile(title: Text('Item 2')),
            Image.network(
              'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            ListTile(title: Text('Item 1')),
            Image.network(
              'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            Text("Test Text 1", style: TextStyle(fontSize: 24)),
            ListTile(title: Text('Item 2')),
            Image.network(
              'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            ListTile(title: Text('Item 1')),
            Image.network(
              'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            Text("Test Text 1", style: TextStyle(fontSize: 24)),
            ListTile(title: Text('Item 2')),
            Image.network(
              'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            ListTile(title: Text('Item 1')),
            Image.network(
              'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            Text("Test Text 1", style: TextStyle(fontSize: 24)),
            ListTile(title: Text('Item 2')),
            Image.network(
              'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
