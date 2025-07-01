import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    
    int selectedIndex = 0;

    List<Widget> pages = [
      Center(child: Text('Home Page')),
      Center(child: Text('Search Page')),
      Center(child: Text('Profile Page')),
    ];

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.purple,
            ),
          ],
          currentIndex: selectedIndex, // مؤشر العنصر الحالي
          selectedItemColor: Colors.amber[800], // لون العنصر المحدد
          unselectedItemColor: Colors.grey, // لون العناصر غير المحددة
          backgroundColor: Colors.white, // لون خلفية الشريط
          onTap: (int index) {
            // دالة تستدعى عند الضغط على عنصر
            setState(() {
              selectedIndex = index; // تحديث مؤشر العنصر الحالي
            });
          },
          type: BottomNavigationBarType.fixed, // نوع الشريط (ثابت أو متغير)
          elevation: 8.0, // ارتفاع الظل أسفل الشريط
          selectedFontSize: 14.0, // حجم خط العنصر المحدد
          unselectedFontSize: 12.0, // حجم خط العناصر غير المحددة
          showSelectedLabels: true, // إظهار نص العنصر المحدد
          showUnselectedLabels: true, // إظهار نص العناصر غير المحددة
          iconSize: 24.0, // حجم الأيقونات
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold), // نمط نص العنصر المحدد
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal), // نمط نص العناصر غير المحددة
          enableFeedback: true, // تفعيل الاهتزاز عند الضغط
          landscapeLayout: BottomNavigationBarLandscapeLayout.linear, // تخطيط الشريط في الوضع الأفقي
        ),
        appBar: AppBar(
          title: const Text('Buttom Navigation Bar'),
        ),
        body: ListView(
          children: [
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Center(
                  child: pages.elementAt(selectedIndex),
                ),
              ], // عرض الصفحات بناءً على مؤشر العنصر الحالي
            )
          ],
        )
      ),
    );
  }
}