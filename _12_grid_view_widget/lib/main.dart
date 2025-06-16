import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List names = [
    'Alice',
    'Bob',
    'Charlie',
    'David',
    'Eve',
    'Frank',
    'Grace',
    'Heidi',
    'Ivan',
    'Judy',
    'Karl',
    'Leo',
    'Mallory',
    'Nina',
    'Oscar',
    'Peggy',
    'Quentin',
    'Rupert',
    'Sybil',
    'Trent',
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('GridView Widget')),
        // body: GridView.builder(
        //   // عدد العناصر في الشبكة
        //   itemCount: names.length, // عدد العناصر التي سيتم عرضها
        //   // تحدد كيف سيتم بناء كل عنصر في الشبكة
        //   itemBuilder: (context, index) {
        //     // هنا يمكنك تخصيص شكل كل عنصر
        //     return Card(
        //       color: Colors.deepPurple[100],
        //       child: Center(
        //         child: Text(names[index], style: const TextStyle(fontSize: 18)),
        //       ),
        //     );
        //   },

        //   // تحدد اتجاه التمرير (عمودي أو أفقي)
        //   scrollDirection: Axis.vertical, // الاتجاه الافتراضي عمودي
        //   // تحدد إذا كان التمرير معكوس أم لا
        //   reverse: false, // إذا true، يبدأ التمرير من النهاية للبداية
        //   // تتحكم في كيفية تمرير العناصر (افتراضي AlwaysScrollableScrollPhysics)
        //   physics: const BouncingScrollPhysics(), // نوع الحركة عند التمرير
        //   // تتحكم في حجم الشبكة (عدد الأعمدة أو الصفوف)
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 2, // عدد الأعمدة في الشبكة
        //     mainAxisSpacing: 8, // المسافة الرأسية بين العناصر
        //     crossAxisSpacing: 8, // المسافة الأفقية بين العناصر
        //     childAspectRatio: 1.0, // نسبة العرض إلى الارتفاع لكل عنصر
        //   ),

        //   // تضيف هوامش حول الشبكة
        //   padding: const EdgeInsets.all(12), // المسافة حول الشبكة
        //   // تتحكم في ما إذا كان يجب الاحتفاظ بحالة العناصر عند إعادة البناء
        //   addAutomaticKeepAlives: true, // يحافظ على حالة العناصر تلقائياً
        //   // تتحكم في ما إذا كان يجب الاحتفاظ بالرسوم المتحركة للعناصر عند إعادة البناء
        //   addRepaintBoundaries: true, // يحسن الأداء عند إعادة رسم العناصر
        //   // تتحكم في ما إذا كان يجب الاحتفاظ بالتركيز على العناصر عند إعادة البناء
        //   addSemanticIndexes: true, // يحسن الوصولية لعناصر الشبكة
        //   // تحدد الفهرس الأول للعناصر (افتراضي 0)
        //   semanticChildCount: names.length, // عدد العناصر لأغراض الوصولية
        // ),
        body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // عدد الأعمدة في الشبكة
            mainAxisSpacing: 8, // المسافة الرأسية بين العناصر
            crossAxisSpacing: 8, // المسافة الأفقية بين العناصر
            childAspectRatio: 1.0, // نسبة العرض إلى الارتفاع لكل عنصر
          ),
          children: [
            for (var name in names)
              Card(
                color: Colors.deepPurple[100],
                child: Center(
                  child: Text(name, style: const TextStyle(fontSize: 18)),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
