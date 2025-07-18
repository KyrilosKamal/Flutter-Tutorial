// استيراد مكتبة كوبرتينو الخاصة بعناصر iOS
import 'package:flutter/cupertino.dart';
// استيراد مكتبة الماتريال الخاصة بتصميمات Google Material Design
import 'package:flutter/material.dart';

// دالة التشغيل الرئيسية للتطبيق
void main() {
  runApp(const MyApp()); // تشغيل التطبيق وبدء MyApp
}

// تعريف كلاس MyApp من نوع StatelessWidget لواجهة التطبيق الرئيسية
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // مُنشئ الكلاس مع مفتاح ثابت

  @override
  Widget build(BuildContext context) {
    // بناء واجهة التطبيق باستخدام MaterialApp
    return MaterialApp(
      // تطبيق الـ Theme على مستوى التطبيق كله
      theme: ThemeData(
        // تحديد الوضع الفاتح أو الداكن
        brightness: Brightness.light,

        // اللون الأساسي المستخدم في التطبيق
        primaryColor: Colors.blue,

        // مخطط الألوان الأساسي بدرجات مختلفة
        primarySwatch: Colors.indigo,

        // تعيين نظام الألوان الكامل للتطبيق
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          brightness: Brightness.light,
        ),

        // لون الخلفية لعناصر مثل الـ Drawer
        canvasColor: Colors.grey[100],

        // لون خلفية الـ Scaffold
        scaffoldBackgroundColor: Colors.white,

        // لون خلفية الكروت Card
        cardColor: Colors.white,

        // لون الخطوط الفاصلة Divider
        dividerColor: Colors.grey,

        // لون تأثير الضغط المطول
        highlightColor: Colors.orangeAccent,

        // لون تأثير الضغط السريع (Splash Effect)
        splashColor: Colors.blue.withOpacity(0.3),

        // لون خلفية الـ Dialog
        dialogBackgroundColor: Colors.white,

        // تخصيص شكل AppBar
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.indigo, // لون الخلفية للـ AppBar
          elevation: 4, // الارتفاع أو الظل أسفل الـ AppBar
          centerTitle: true, // جعل العنوان في المنتصف
          titleTextStyle: TextStyle(fontSize: 20, color: Colors.white), // تنسيق النص داخل الـ AppBar
        ),

        // تخصيص شكل الـ BottomNavigationBar
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.indigo[50], // لون الخلفية
          selectedItemColor: Colors.indigo, // لون العنصر المختار
          unselectedItemColor: Colors.grey, // لون العنصر الغير مختار
        ),

        // تخصيص أنماط النصوص العامة في التطبيق
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold), // العناوين الكبيرة
          titleLarge: TextStyle(fontSize: 18, fontStyle: FontStyle.italic), // العناوين
          bodyLarge: TextStyle(fontSize: 16), // النصوص الأساسية
          bodyMedium: TextStyle(fontSize: 14), // النصوص الثانوية
        ),

        // تحديد تنسيق الأيقونات في التطبيق
        iconTheme: IconThemeData(
          color: Colors.indigo, // اللون الافتراضي للأيقونات
          size: 24, // حجم الأيقونة
        ),

        // تنسيق الأيقونات التي تستخدم اللون الأساسي
        primaryIconTheme: IconThemeData(
          color: Colors.white,
          size: 24,
        ),

        // تخصيص شكل زر ElevatedButton
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo, // لون الزر
            textStyle: TextStyle(fontSize: 16, color: Colors.white), // تنسيق النص داخل الزر
          ),
        ),

        // تخصيص شكل زر TextButton
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.indigo, // لون النص
            textStyle: TextStyle(fontSize: 14),
          ),
        ),

        // تخصيص شكل زر OutlinedButton
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.indigo), // تحديد حدود الزر
            textStyle: TextStyle(fontSize: 14),
          ),
        ),

        // تخصيص شكل زر FloatingActionButton
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.indigo, // لون الخلفية
          foregroundColor: Colors.white, // لون الأيقونة
          elevation: 4, // ارتفاع الظل
        ),

        // تخصيص تنسيق الحقول النصية مثل TextField
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(), // نوع الإطار للحقول
          labelStyle: TextStyle(color: Colors.indigo), // تنسيق النص داخل الحقول
        ),

        // تخصيص شكل شريحة Chip
        chipTheme: ChipThemeData(
          backgroundColor: Colors.grey[200]!, // لون الخلفية
          selectedColor: Colors.indigo, // لون الشريحة المختارة
          labelStyle: TextStyle(color: Colors.black), // تنسيق النص
          secondaryLabelStyle: TextStyle(color: Colors.white),
          brightness: Brightness.light,
        ),

        // تخصيص شكل TabBar
        tabBarTheme: TabBarThemeData(
          labelColor: Colors.indigo, // لون التاب المختار
          unselectedLabelColor: Colors.grey, // لون التاب الغير مختار
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: Colors.indigo, width: 2), // شكل الخط أسفل التاب
          ),
        ),

        // تخصيص شكل Slider
        sliderTheme: SliderThemeData(
          activeTrackColor: Colors.indigo, // لون المسار النشط
          thumbColor: Colors.indigo, // لون المقبض
        ),

        // تخصيص شكل Divider
        dividerTheme: DividerThemeData(
          color: Colors.grey, // لون الخط الفاصل
          thickness: 1, // سمك الخط
        ),

        // تخصيص شكل Dialog
        dialogTheme: DialogThemeData(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(fontSize: 20, color: Colors.indigo),
        ),

        // تخصيص شكل TimePicker
        timePickerTheme: TimePickerThemeData(
          backgroundColor: Colors.white,
          dialHandColor: Colors.indigo,
        ),

        // تخصيص شكل SnackBar
        snackBarTheme: SnackBarThemeData(
          backgroundColor: Colors.indigo, // لون الخلفية
          contentTextStyle: TextStyle(color: Colors.white), // تنسيق النص
        ),

        // تخصيص شكل Tooltip
        tooltipTheme: TooltipThemeData(
          decoration: BoxDecoration(
            color: Colors.indigo, // لون خلفية Tooltip
            borderRadius: BorderRadius.circular(4), // استدارة الزوايا
          ),
          textStyle: TextStyle(color: Colors.white), // لون النص
        ),

        // تخصيص شكل NavigationRail
        navigationRailTheme: NavigationRailThemeData(
          backgroundColor: Colors.grey[200], // لون الخلفية
          selectedIconTheme: IconThemeData(color: Colors.indigo), // لون الأيقونة المختارة
        ),

        // تخصيص شكل Drawer
        drawerTheme: DrawerThemeData(
          backgroundColor: Colors.grey[100], // لون خلفية Drawer
        ),

        // تخصيص Widgets الخاصة بـ iOS مثل Cupertino
        cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(
          primaryColor: Colors.indigo, // اللون الأساسي
        ),

        // تحديد كثافة العناصر بالنسبة لكل منصة
        visualDensity: VisualDensity.adaptivePlatformDensity,

        // تحديد حجم مساحة الضغط حول العناصر
        materialTapTargetSize: MaterialTapTargetSize.padded,

        // تحديد شكل التحولات بين الصفحات
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: ZoomPageTransitionsBuilder(), // أنيمشن للأندرويد
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(), // أنيمشن للآيفون
          },
        ),

        // تحديد النظام الذي نستهدفه: أندرويد، iOS
        platform: TargetPlatform.android,

        // اختيار نوع الخطوط والأنماط
        typography: Typography.material2021(),
      ),
      home: const HomePage(), // الشاشة الرئيسية للتطبيق
    );
  }
}

// كلاس لصفحة HomePage
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // بناء Scaffold يحتوي على AppBar و Body و FloatingActionButton
    return Scaffold(
      appBar: AppBar(title: const Text('ThemeData Example')), // شريط التطبيق العلوي
      body: Center(
        child: ElevatedButton(
          onPressed: () {}, // عند الضغط لا شيء يحدث هنا
          child: const Text('Button Example'), // النص داخل الزر
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // الضغط على زر إضافة
        child: const Icon(Icons.add), // أيقونة الإضافة
      ),
    );
  }
}
