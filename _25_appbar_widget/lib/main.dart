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
        appBar: AppBar(
          // title: عنوان شريط التطبيق (AppBar)، يمكن أن يكون نص أو ويدجت آخر.
          title: Text("AppBar Widget"),

          // centerTitle: إذا كانت true، يتم توسيط العنوان في منتصف الشريط.
          centerTitle: true,

          // backgroundColor: لون خلفية الـ AppBar.
          backgroundColor: Colors.deepPurple,

          // elevation: ارتفاع الظل أسفل الـ AppBar.
          elevation: 20.0,

          // actions: قائمة من الودجات تظهر في نهاية الـ AppBar (عادةً أيقونات).
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],

          // leading: ويدجت تظهر في بداية الـ AppBar (عادةً أيقونة قائمة أو رجوع).
          leading: Icon(Icons.menu),

          // flexibleSpace: ويدجت تظهر خلف محتوى الـ AppBar (مثلاً صورة أو تدرج لوني).
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.purpleAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          // bottom: ويدجت تظهر أسفل الـ AppBar (عادةً TabBar).
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(10.0),
            child: Text('شريط سفلي', style: TextStyle(color: Colors.white)),
          ),
        ),
        body: Center(
          child: Text('Hello, World!', style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}
