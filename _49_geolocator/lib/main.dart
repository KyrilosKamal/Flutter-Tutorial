// استيراد مكتبة التعامل مع ال asynchronous operations مثل Future و Stream
import 'dart:async';

// استيراد مكتبة واجهات المستخدم الخاصة بفلاتر
import 'package:flutter/material.dart';

// استيراد مكتبة geolocator الخاصة بالحصول على إحداثيات الموقع والمسافات
import 'package:geolocator/geolocator.dart';

// الدالة الرئيسية لتشغيل التطبيق
void main() {
  runApp(const MyApp()); // تشغيل ال Widget الأساسية للتطبيق
}

// تعريف ال Widget الرئيسية التي تمثل StatefulWidget لأنها ستتغير مع الزمن
class MyApp extends StatefulWidget {
  const MyApp({super.key}); // Constructor مع مفتاح إجباري

  @override
  State<MyApp> createState() => _MyAppState(); // إنشاء حالة ال Widget
}

// كلاس الحالة المرتبط ب MyApp وهو الذي يحتوي على المتغيرات والدوال
class _MyAppState extends State<MyApp> {
  // تعريف متغير يمكن استخدامه لاحقاً للاستماع لتغيرات الموقع
  // late StreamSubscription<Position> positionStream;

  // دالة للحصول على الموقع الحالي والتحقق من الصلاحيات والخدمات
  getCurrentLocation() async {
    bool isServiceEnabled; // متغير للتأكد ما إذا كانت خدمة الموقع مفعلة
    LocationPermission locationPermission; // متغير لحفظ حالة صلاحيات الموقع

    // التحقق إذا كانت خدمة الموقع مفعلة أم لا
    isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isServiceEnabled) {
      // إذا كانت خدمة الموقع غير مفعلة يتم إرجاع خطأ
      return Future.error('Location services are disabled.');
    }

    // التحقق من حالة صلاحيات الوصول للموقع
    locationPermission = await Geolocator.checkPermission();
    if (locationPermission == LocationPermission.denied) {
      // إذا كانت الصلاحية مرفوضة، يتم طلبها من المستخدم
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.denied) {
        // إذا استمر الرفض يتم إرجاع خطأ
        return Future.error('Location permissions are denied.');
      }
    }

    // إذا كانت الصلاحيات مسموح بها أثناء استخدام التطبيق أو دائماً
    if (locationPermission == LocationPermission.whileInUse ||
        locationPermission == LocationPermission.always) {
      // نحسب المسافة بين نقطتين محددتين (إحداثيات معروفة)
      double distanceInMeters = Geolocator.distanceBetween(
        52.2165157, // خط العرض للنقطة الأولى
        6.9437819, // خط الطول للنقطة الأولى
        52.3546274, // خط العرض للنقطة الثانية
        4.8285838, // خط الطول للنقطة الثانية
      );

      // طباعة المسافة المحسوبة بعد تحويلها إلى كيلومتر
      print('Distance: ${distanceInMeters / 1000} km');
    }

    // إذا تم رفض الصلاحية بشكل دائم
    if (locationPermission == LocationPermission.deniedForever) {
      // يتم إرجاع خطأ لأن الصلاحيات مرفوضة للأبد
      return Future.error('Location permissions are denied forever.');
    }

    // إذا تم الوصول إلى هنا يعني أن الصلاحيات متاحة
    // يتم الحصول على الموقع الحالي بأفضل دقة للملاحة
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.bestForNavigation,
    );
    // طباعة الإحداثيات (خط العرض وخط الطول)
    print(position);

    // الكود التالي موقوف (معلق) لكنه كان يُستخدم للاستماع لتغير الموقع بشكل مستمر
    /*
    positionStream = Geolocator.getPositionStream().listen((Position? position) {
      print(
        position == null
            ? 'Unknown'
            : '${position.latitude.toString()}, ${position.longitude.toString()}',
      );
    });
    */
  }

  // دالة ال initState التي تعمل أول ما يتم بناء ال Widget
  @override
  void initState() {
    getCurrentLocation(); // استدعاء دالة الحصول على الموقع
    super.initState(); // استدعاء initState في الكلاس الأب
  }

  // الدالة المسؤولة عن تحرير الموارد عند التخلص من ال Widget
  /*
  @override
  void dispose() {
    if (positionStream != null) {
      positionStream.cancel(); // إيقاف الاستماع لتغيرات الموقع
    }
    super.dispose(); // استدعاء الدالة الأصلية
  }
  */

  // دالة build المسؤولة عن بناء الواجهة الرسومية
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', // عنوان التطبيق
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ), // إعداد الألوان
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GeoLocation Example'),
        ), // شريط العنوان
        body: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // ترتيب المحتوى في المنتصف
            children: [], // حالياً لا يوجد Widgets داخل العمود
          ),
        ),
      ),
    );
  }
}
