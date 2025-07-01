import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  List  pages = [
    "https://images.pexels.com/photos/236047/pexels-photo-236047.jpeg?cs=srgb&dl=clouds-cloudy-countryside-236047.jpg&fm=jpg",
    "https://images.unsplash.com/photo-1515378791036-0648a3ef77b2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8b25saW5lfHwwfHx8fDE2MTg5MDgyODg&ixlib=rb-1.2.1&q=80&w=1080",
    "https://tse1.mm.bing.net/th/id/OIP.496a_8hzkh-cV_mX40HW5wHaEO?rs=1&pid=ImgDetMain&o=7&rm=3"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      primarySwatch: Colors.blue,
      ),
      home: Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: PageView.builder(
        // الخصائص الرئيسية لـ PageView.builder:
        // 1. itemCount: عدد الصفحات التي سيتم إنشاؤها.
        itemCount: pages.length,
        // 2. itemBuilder: دالة تبني كل صفحة بناءً على الفهرس.
        itemBuilder: (context, index) {
        return Center(
          child: Column(
            children: [
              Image.network(
              pages[index],
              fit: BoxFit.cover, // ضبط كيفية عرض الصورة داخل الصفحة
              width: double.infinity, // عرض الصورة
              height: MediaQuery.of(context).size.height * 0.5, // ارتفاع الصورة
              ),

              


              const SizedBox(height: 20), // مسافة بين الصورة والنص
              
            /**
             * PageView(
          controller: PageController(), // وحدة التحكم في الصفحات (يمكنك تخصيص البداية، الاتجاه، إلخ)
          scrollDirection: Axis.horizontal, // اتجاه التمرير (أفقي أو عمودي)
          reverse: false, // عكس اتجاه التمرير
          pageSnapping: true, // هل يتم تثبيت الصفحة تلقائياً عند التمرير
          physics: BouncingScrollPhysics(), // فيزياء التمرير (مثل التمرير المطاطي أو العادي)
          onPageChanged: (int page) {}, // قائمة الصفحات (عناصر الواجهة)
          allowImplicitScrolling: false, // السماح بالتمرير الضمني (لأداء أفضل مع الصور الكبيرة)
          restorationId: 'pageView', // معرف الاستعادة لاستعادة حالة الصفحة عند إعادة فتح التطبيق
          clipBehavior: Clip.hardEdge, // دالة تُستدعى عند تغيير الصفحة
          children: <Widget>[
            Text("Text 1"), // الصفحة الأولى
            Text("Text 2"), // الصفحة الثانية
            Text("Text 3"), // الصفحة الثالثة
            Image.network('https://tse2.mm.bing.net/th/id/OIP.G37tgeQqSNt7v2oPfj9ltQHaE7?rs=1&pid=ImgDetMain&o=7&rm=3'), // صورة من الإنترنت
          ], // طريقة قص المحتوى الخارج عن الحدود
        ),
             */


            ],
          ),
        );
        },
        // 3. controller: وحدة تحكم لتغيير الصفحة برمجياً أو الحصول على معلومات عنها.
        controller: PageController(
        initialPage: 0, // الصفحة الافتراضية عند البداية
        viewportFraction: 0.8, // نسبة عرض الصفحة بالنسبة للشاشة
        ),
        // 4. scrollDirection: اتجاه التمرير (أفقي أو عمودي)، القيمة الافتراضية Axis.horizontal.
        scrollDirection: Axis.horizontal,
        // 5. onPageChanged: دالة تستدعى عند تغيير الصفحة.
        onPageChanged: (int page) {},
        // 6. physics: لتحديد نوع التمرير (مثل التمرير العادي أو بدون تمرير).
        physics: BouncingScrollPhysics(),
        // 7. padEnds: إذا كانت true، تضيف مساحة في بداية ونهاية الصفحات (افتراضي true).
        padEnds: true,
        // 8. allowImplicitScrolling: إذا كانت true، يسمح بالتمرير المسبق للصفحات المجاورة (افتراضي false).
        allowImplicitScrolling: false,
        // 9. restorationId: لتعريف معرف استعادة الحالة للصفحة.
        restorationId: 'pageView',
      ),
      ),
    );
  }
}