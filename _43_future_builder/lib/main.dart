import 'package:flutter/material.dart'; // استيراد مكتبة تصميم واجهات المستخدم
import 'package:dio/dio.dart'; // استيراد مكتبة Dio لإرسال واستقبال البيانات من API

void main() {
  runApp(const MyApp()); // تشغيل التطبيق وبدء MyApp كالويدجت الأساسي
}

class MyApp extends StatefulWidget {
  // تعريف ويدجت من نوع Stateful لأنه في حالة هتتغير (بيانات الأخبار)
  const MyApp({super.key}); // Constructor مع المفتاح الافتراضي للويجدت

  @override
  State<MyApp> createState() => _MyAppState(); // ربط الـ Widget بحالته الخاصة
}

class _MyAppState extends State<MyApp> {
  late Future<List>
  articlesFuture; // متغير لحفظ ال Future اللي راجع من جلب البيانات (ليست الأخبار)

  // دالة fetchData لجلب البيانات من ال API
  Future<List> fetchData() async {
    final dio = Dio(); // إنشاء كائن Dio علشان نستخدمه في إرسال الطلب
    final response = await dio.get(
      // إرسال GET request لل API
      'https://newsapi.org/v2/everything?q=tesla&from=2025-06-18&sortBy=publishedAt&apiKey=81e6cb59198942eca2e832b8418d868e',
    );
    return response
        .data['articles']; // إرجاع List الأخبار من داخل ال JSON المستلم
  }

  @override
  void initState() {
    super.initState(); // استدعاء الدالة الأصلية علشان تكمل التهيئة
    articlesFuture =
        fetchData(); // استدعاء fetchData وتخزين النتيجة في articlesFuture مرة واحدة بس
  }

  @override
  Widget build(BuildContext context) {
    // دالة بناء الواجهة الرسومية
    return MaterialApp(
      // إنشاء تطبيق من نوع MaterialApp
      debugShowCheckedModeBanner: false, // إخفاء شريط debug
      title: 'Flutter Demo', // تحديد عنوان التطبيق
      theme: ThemeData(
        // إعداد الثيم
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ), // نظام الألوان مبني على لون أساسي
      ),
      home: Scaffold(
        backgroundColor: Colors.red[100], // تحديد لون خلفية التطبيق
        // هيكل واجهة التطبيق الرئيسي
        appBar: AppBar(
          // شريط التطبيق العلوي
          title: const Text(
            'Live News App', // عنوان التطبيق في ال AppBar
            style: TextStyle(
              color: Colors.redAccent, // لون الخط
              fontStyle: FontStyle.italic, // جعل الخط مائل
              fontFamily: 'RobotoMono', // تحديد نوع الخط
            ),
          ),
          centerTitle: true, // جعل العنوان في المنتصف
          backgroundColor: Colors.transparent, // جعل خلفية ال AppBar شفافة
        ),
        body: FutureBuilder<List>(
          // FutureBuilder لبناء الواجهة بناء على نتيجة الـ Future
          future: articlesFuture, // تحديد الـ Future اللي هيتم مراقبته
          builder: (context, snapshot) {
            // snapshot يحتوي على الحالة والبيانات
            if (snapshot.connectionState == ConnectionState.waiting &&
                snapshot.connectionState == ConnectionState.done) {
              // لو لسه بيحمل
              return const Center(
                child: CircularProgressIndicator(),
              ); // إظهار مؤشر تحميل
            } else if (snapshot.hasError) {
              // لو حصل خطأ أثناء تحميل البيانات
              return Center(
                child: Text('Error: ${snapshot.error}'),
              ); // إظهار رسالة الخطأ
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              // لو مفيش بيانات جاية أو الليست فاضية
              return const Center(
                child: Text('No data available'),
              ); // رسالة تنبيه بعدم توفر بيانات
            } else {
              // لو البيانات موجودة بالفعل يتم بناء الليست
              return ListView.builder(
                itemCount: snapshot
                    .data!
                    .length, // عدد العناصر في الليست حسب عدد الأخبار
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Card(
                    elevation: 4, // تحديد ارتفاع الكارت,
                    // إنشاء كارت لكل خبر
                    child: InkWell(
                      // InkWell لتفعيل تأثير الضغط على الكارت
                      onTap: () {
                        // تقدر تضيف هنا أي Action عند الضغط زي فتح رابط الخبر مثلاً
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              '${snapshot.data![index]['title']}',
                            ),
                          ),
                        ); // عرض Snackbar عند الضغط على الكارت
                      },
                      child: ListTile(
                        // العنصر اللي يعرض محتوى الخبر
                        title: Text(
                          snapshot.data![index]['title'] ?? 'No title',
                        ), // عنوان الخبر، لو فاضي يكتب No title
                        subtitle: Text(
                          snapshot.data![index]['description'] ??
                              'No description',
                        ), // وصف الخبر، ولو فاضي يكتب No description
                        leading:
                            snapshot.data![index]['urlToImage'] !=
                                null // شرط لو في صورة مع الخبر
                            ? Image.network(
                                // عرض الصورة من الإنترنت
                                snapshot.data![index]['urlToImage'],
                                width: 100, // تحديد عرض الصورة
                                fit: BoxFit
                                    .cover, // جعل الصورة تغطي المساحة المتاحة بدون تشويه
                              )
                            : const SizedBox(
                                width: 100,
                                child: Icon(Icons.image_not_supported),
                              ), // لو مفيش صورة يعرض Icon مكانها
                      ),
                    ),
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
