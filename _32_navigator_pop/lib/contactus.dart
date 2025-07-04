import 'package:flutter/material.dart';

class Contactus extends StatelessWidget {
  const Contactus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact Us")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.amber,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back", style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}

/// تستخدم دالة `Navigator.pop(context)` في فلاتر لإغلاق الشاشة الحالية والعودة إلى الشاشة السابقة في مكدس التنقل.
/// 
/// الخصائص والمعاملات:
/// 
/// - `BuildContext context`:
///   - السياق الحالي للبناء (BuildContext) الذي يُستخدم لتحديد موقع الـ Navigator في شجرة العناصر.
///   - يجب تمرير هذا السياق ليعرف التطبيق أي Navigator يجب أن ينفذ عملية الإغلاق عليه.
/// 
/// - `dynamic result` (اختياري):
///   - يمكنك تمرير قيمة (أي نوع) كمعامل اختياري.
///   - هذه القيمة ستُعاد إلى الشاشة السابقة عند إغلاق الشاشة الحالية.
///   - مثال: إذا كنت في شاشة إدخال بيانات وتريد إعادة البيانات المدخلة إلى الشاشة السابقة.
/// 
/// ملاحظات:
/// - إذا لم يتم تمرير معامل `result`، سيتم إرجاع القيمة `null`.
/// - يجب التأكد من وجود شاشة سابقة في مكدس التنقل، وإلا قد يحدث خطأ.
/// 
/// مثال على الاستخدام:
/// ```dart
/// Navigator.pop(context, 'تم الإرسال بنجاح');
/// ```
/**
 * 
 * 
 */