import 'package:flutter/material.dart'; // استيراد مكتبة الواجهات الرسومية في Flutter
import 'package:http/http.dart' as http; // استيراد مكتبة HTTP لعمل طلبات الشبكة مع تسمية http كـ alias
import 'dart:convert'; // استيراد مكتبة JSON لتحويل النصوص إلى خرائط والعكس

void main() {
  runApp(const MyApp()); // تشغيل التطبيق وتحديد MyApp كواجهة رئيسية
}

class MyApp extends StatefulWidget { // تعريف كلاس MyApp كـ StatefulWidget لأنه يحتوي على حالة تتغير
  const MyApp({super.key}); // كونستركتور MyApp

  @override
  State<MyApp> createState() => _MyAppState(); // إنشاء الحالة المرتبطة بالـ Widget
}

class _MyAppState extends State<MyApp> {
  bool loading = false; // متغير عشان يعرفنا إذا كنا بنحمل بيانات دلوقتي ولا لأ
  List responseDataList = []; // متغير هيخزن فيه البيانات اللي هترجع من الـ API

  // دالة لجلب البيانات من الـ API
  Future<void> fetchData() async {
    loading = true; // تفعيل مؤشر التحميل
    setState(() {}); // تحديث الـ UI عشان يظهر مؤشر التحميل

    var response = await http.get( // عمل GET request على رابط الـ API
      Uri.parse('https://imdb.iamidiotareyoutoo.com/search?q=Spiderman'),
    );

    if (response.statusCode == 200) { // التحقق إن حالة الاستجابة 200 يعني نجاح
      var responseData = json.decode(response.body); // تحويل الـ JSON String إلى Map
      print(responseData); // طباعة البيانات في الكونسول للتأكيد
      loading = false; // إلغاء حالة التحميل
      setState(() {
        responseDataList = responseData['description']; // استخراج البيانات من الـ key 'description'
      });
    } else { // لو حالة الاستجابة مش 200
      print('Request failed with status: ${response.statusCode}'); // طباعة حالة الخطأ
      print('Response Body: ${response.body}'); // طباعة تفاصيل الاستجابة
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // إنشاء تطبيق مادي التصميم Material Design
      title: 'Flutter Demo', // عنوان التطبيق
      theme: ThemeData( // تحديد الثيم الأساسي للتطبيق
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // تحديد ألوان الثيم
      ),
      home: Scaffold( // بناء هيكل الشاشة الأساسية
        appBar: AppBar(title: const Text('Flutter HTTP and API Example')), // شريط التطبيق العلوي
        body: Center( // وضع كل العناصر في المنتصف
          child: Column( // ترتيب العناصر رأسياً
            children: [
              Padding( // إضافة مسافة حول الزر
                padding: const EdgeInsets.all(20.0),
                child: MaterialButton( // زر بلون أحمر
                  color: Colors.redAccent, // لون الخلفية
                  textColor: Colors.white, // لون النص
                  onPressed: fetchData, // عند الضغط يتم استدعاء دالة جلب البيانات
                  child: const Text('Make HTTP Request'), // نص الزر
                ),
              ),
              if(loading) Center( child: CircularProgressIndicator(),), // إظهار مؤشر تحميل لو الحالة loading = true
              Expanded( // عشان ياخد المساحة المتاحة تحت الزر
                child: ListView.builder( // بناء قائمة من العناصر بناءً على عدد عناصر responseDataList
                  itemCount: responseDataList.length, // تحديد عدد العناصر
                  itemBuilder: (context, index) { // بناء كل عنصر
                    return InkWell( // يضيف تفاعل عند الضغط على الكارت
                      onTap: () { // لما المستخدم يضغط على الكارت
                        print(responseDataList[index]['#TITLE']); // طباعة عنوان الفيلم في الكونسول
                      },
                      child: Card( // تصميم العنصر في كارت
                        child: ListTile( // كل كارت يحتوي على صورة وعنوان وممثلين
                          leading: Image.network( // عرض صورة البوستر
                            responseDataList[index]['#IMG_POSTER'], // رابط الصورة
                            width: MediaQuery.of(context).size.width * 0.20, // تحديد حجم الصورة بنسبة من الشاشة
                            fit: BoxFit.cover, // جعل الصورة تغطي المساحة بدون تشويه
                          ),
                          title: Text(responseDataList[index]['#TITLE']), // عنوان الفيلم
                          subtitle: Text(responseDataList[index]['#ACTORS']), // أسماء الممثلين
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
