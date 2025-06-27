import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

// ignore: slash_for_doc_comments
/**
 * DefaultTabController هو ويدجت في Flutter يُستخدم لإدارة التبويبات (Tabs) بسهولة. فيما يلي جميع الخصائص (properties) المهمة مع شرحها بالتفصيل باللغة العربية:

الخصائص الأساسية لـ DefaultTabController
الخاصية	النوع	الشرح بالعربية
length	int	عدد التبويبات (Tabs) التي سيتم التحكم بها. يجب أن يكون أكبر من صفر.
child	Widget	الويدجت الرئيسي الذي سيحتوي على التبويبات (عادةً يكون Scaffold أو Column).
initialIndex	int	(اختياري) رقم التبويب الذي سيتم اختياره أولاً عند بدء التطبيق. القيمة الافتراضية هي 0.
animationDuration	Duration	(اختياري) مدة التحريك عند الانتقال بين التبويبات. القيمة الافتراضية هي 300 مللي ثانية.
شرح الخصائص بالتفصيل
length
يحدد عدد التبويبات التي ستظهر في التطبيق. يجب أن يتطابق هذا الرقم مع عدد العناصر في TabBar وTabBarView.

child
هو الويدجت الذي سيحتوي على التبويبات. غالباً ما يكون Scaffold أو أي ويدجت آخر يدعم التبويبات.

initialIndex
يحدد أي تبويب سيكون نشطًا عند بدء التطبيق. إذا لم تحدد هذه الخاصية، سيتم اختيار التبويب الأول تلقائيًا.

animationDuration
تحدد مدة التحريك (الأنيميشن) عند التبديل بين التبويبات. يمكنك تغييرها لجعل الانتقال أسرع أو أبطأ.
 */
class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: DefaultTabController(
        length: 3, // عدد علامات التبويب
        initialIndex: 0, // الفهرس الأولي للتبويب النشط (0 يعني أول تبويب)
        child: Scaffold(
          appBar: AppBar(
            //title: const Text('TabBar Example'),
            bottom: TabBar(
              // tabs: قائمة العناصر التي تظهر كعلامات تبويب (يجب تحديدها)
              tabs: [
                Tab(
                  text: 'Tab 1',
                ), // يمكنك استخدام أي Widget هنا، مثل Icon أو Text
                Tab(
                  text: 'Tab 2',
                ), // يمكنك استخدام أي Widget هنا، مثل Icon أو Text
                Tab(
                  text: 'Tab 3',
                ), // يمكنك استخدام أي Widget هنا، مثل Icon أو Text
              ],

              // isScrollable: إذا كانت true يمكن تمرير علامات التبويب أفقياً إذا كانت كثيرة (افتراضي false)
              isScrollable: false,

              // indicatorColor: لون الخط السفلي الذي يظهر تحت علامة التبويب النشطة
              indicatorColor: Colors.white,

              // indicatorWeight: سمك الخط السفلي (indicator)
              indicatorWeight: 2.0,

              // indicatorPadding: المسافة حول الخط السفلي (indicator)
              indicatorPadding: EdgeInsets.zero,

              // indicator: يمكنك تخصيص شكل المؤشر (indicator) بالكامل عبر Widget
              // indicator: BoxDecoration(...),

              // labelColor: لون نص علامة التبويب النشطة
              labelColor: Colors.white,

              // unselectedLabelColor: لون نص علامات التبويب غير النشطة
              unselectedLabelColor: Colors.grey,

              // labelStyle: نمط نص علامة التبويب النشطة (TextStyle)
              labelStyle: TextStyle(fontWeight: FontWeight.bold),

              // unselectedLabelStyle: نمط نص علامات التبويب غير النشطة
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),

              // overlayColor: لون التفاعل عند الضغط على علامة التبويب (MaterialStateProperty)
              // overlayColor: MaterialStateProperty.all(Colors.red.withOpacity(0.2)),

              // splashFactory: تأثير الضغط (InkSplash, InkRipple, ...الخ)
              // splashFactory: InkRipple.splashFactory,

              // mouseCursor: شكل مؤشر الفأرة عند المرور فوق علامة التبويب
              // mouseCursor: SystemMouseCursors.click,

              // physics: خصائص التمرير (ScrollPhysics)
              // physics: BouncingScrollPhysics(),

              // automaticIndicatorColorAdjustment: إذا كانت true يتم ضبط لون المؤشر تلقائياً حسب الخلفية (افتراضي true)
              automaticIndicatorColorAdjustment: true,
            ),
          ),
          body: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: TabBarView(
                    // children: قائمة الـ Widgets التي تظهر كمحتوى لكل تبويب (يجب تحديدها)
                    children: [
                      Center(child: Text('Tab 1 Content')),
                      Center(child: Text('Tab 2 Content')),
                      Center(child: Text('Tab 3 Content')),
                    ],

                    // controller: للتحكم في TabBarView يدوياً عبر TabController (عادةً يتم توفيره تلقائياً من DefaultTabController)
                    // controller: TabController(length: 3, vsync: this),

                    // physics: خصائص التمرير (ScrollPhysics)، مثل BouncingScrollPhysics أو NeverScrollableScrollPhysics
                    // physics: BouncingScrollPhysics(),

                    // dragStartBehavior: يحدد متى يبدأ السحب (DragStartBehavior.start أو DragStartBehavior.down)
                    // dragStartBehavior: DragStartBehavior.start,

                    // clipBehavior: يحدد كيف يتم قص المحتوى الزائد (Clip.none, Clip.hardEdge, Clip.antiAlias, Clip.antiAliasWithSaveLayer)
                    // clipBehavior: Clip.hardEdge,

                    // viewportFraction: يحدد نسبة عرض كل صفحة من TabBarView (افتراضي 1.0)
                    // viewportFraction: 1.0,

                    // allowImplicitScrolling: إذا كانت true يسمح بالتمرير الضمني للصفحات غير النشطة (افتراضي false)
                    // allowImplicitScrolling: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
