import 'package:flutter/material.dart'; // استيراد مكتبة الواجهة الرسومية Flutter UI
import 'package:shared_preferences/shared_preferences.dart'; // استيراد مكتبة shared_preferences لتخزين واسترجاع البيانات محلياً

void main() { // دالة التشغيل الرئيسية
  runApp(MyApp()); // تشغيل تطبيق MyApp
}

class MyApp extends StatefulWidget { // إنشاء Widget من النوع Stateful عشان الحالة تتغير أثناء التشغيل
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState(); // بيرجع الحالة المرتبطة بالـ Widget
}

class _MyAppState extends State<MyApp> {
  String nameDB = ""; // متغير هيخزن البيانات المسترجعة من Shared Preferences

  // دالة لحفظ البيانات في Shared Preferences
  setData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance(); // جلب نسخة من SharedPreferences
    await sharedPreferences.setString("name", "Kyrillos"); // تخزين قيمة String بالـ key اسمه "name"
  }

  // دالة لاسترجاع البيانات
  getDate() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance(); // جلب نسخة من SharedPreferences
    String? name = sharedPreferences.getString("name"); // استرجاع القيمة المخزنة في المفتاح "name"
    setState(() {
      nameDB = name ?? ""; // لو القيمة null رجع String فاضي
    });
  }

  // دالة لحذف البيانات
  removeData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance(); // جلب SharedPreferences
    await sharedPreferences.remove("name"); // إزالة القيمة المخزنة بالمفتاح "name"
    setState(() {
      nameDB = ""; // إعادة تعيين المتغير عشان يمسح القيمة المعروضة
    });
  }

  // دالة لتحديث البيانات
  updateData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance(); // جلب SharedPreferences
    await sharedPreferences.setString("name", "Kyrillos Updated"); // تحديث القيمة للمفتاح "name"
    getDate(); // استدعاء دالة getDate عشان يحدث القيمة في الواجهة
  }

  @override
  void initState() {
    getDate(); // عند بدء التطبيق يتم جلب البيانات المحفوظة
    super.initState(); // استدعاء الدالة الأساسية للأب
  }

  @override
  Widget build(BuildContext context) { // دالة لبناء الواجهة
    return MaterialApp(
      title: 'Flutter Demo', // عنوان التطبيق
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // تحديد شكل الثيم الخاص بالتطبيق
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Shared Preferences Example"), // عنوان الشريط العلوي
          centerTitle: true, // جعل العنوان في المنتصف
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // وضع العناصر في منتصف المحور الرأسي
            crossAxisAlignment: CrossAxisAlignment.center, // محاذاة العناصر في منتصف المحور الأفقي
            children: [
              MaterialButton(
                onPressed: () async {
                  await setData(); // عند الضغط على الزر، حفظ البيانات
                },
                color: Colors.greenAccent,
                child: Text("Save Data"), // نص الزر
              ),
              MaterialButton(
                onPressed: () async {
                  await getDate(); // عند الضغط، جلب البيانات
                },
                color: Colors.redAccent,
                child: Text("Get Data"),
              ),
              MaterialButton(
                onPressed: () async {
                  await removeData(); // عند الضغط، حذف البيانات
                },
                color: Colors.blueAccent,
                child: Text("Remove Data"),
              ),
              MaterialButton(
                onPressed: () async {
                  await updateData(); // عند الضغط، تحديث البيانات
                },
                color: Colors.orangeAccent,
                child: Text("Update Data"),
              ),
              nameDB.isNotEmpty // لو المتغير فيه بيانات
                  ? Text(
                      nameDB, // عرض القيمة المسترجعة
                      style: TextStyle(
                        fontSize: 30, // حجم الخط
                        fontWeight: FontWeight.bold, // جعله عريض
                      ),
                    )
                  : Text(""), // لو مفيش بيانات مش هيظهر حاجة
            ],
          ),
        ),
      ),
    );
  }
}
