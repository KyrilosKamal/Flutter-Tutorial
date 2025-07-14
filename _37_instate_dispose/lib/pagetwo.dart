import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page Two")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text("Page Two")],
        ),
      ),
    );
  }
}


/* -------------------------------------------------------------------------- */
/*                                Explaination                                */
/* -------------------------------------------------------------------------- */



/**
 * دورة حياة الويدجت (Widget Lifecycle) في فلاتر هي المراحل التي يمر بها الويدجت منذ إنشائه وحتى إزالته من الشاشة. initState و dispose هما من أهم هذه المراحل في StatefulWidget.

initState()
هي أول دالة يتم استدعاؤها (بعد الكونستركتور) عندما يتم إنشاء الويدجت وإضافته إلى شجرة الويدجت (widget tree). يتم استدعاؤها مرة واحدة فقط طوال عمر الويدجت.

متى نستخدمها؟ تُستخدم للتهيئة الأولية التي تحتاج إلى تنفيذها مرة واحدة فقط:

تهيئة المتحكمات (Controllers): مثل TextEditingController للتحكم في حقول النص، أو AnimationController للتحكم في التحريكات.
الاشتراك في الـ Streams أو الـ ChangeNotifiers: إذا كان الويدجت الخاص بك يعتمد على بيانات من مصدر خارجي، فهذا هو المكان المناسب لبدء الاستماع لهذه التغييرات.
تحميل البيانات الأولية: مثل استدعاء API لجلب بيانات سيتم عرضها في الويدجت.
قاعدة مهمة: يجب دائمًا استدعاء super.initState() في بداية الدالة لضمان تنفيذ الشيفرة الأساسية من الكلاس الأب State.

@override
void initState() {
  super.initState(); // يجب استدعاؤها أولاً
  // ضع هنا كود التهيئة الخاص بك
  print("Widget has been initialized!");
}

 */



/**
 * 
 * dispose()
هي الدالة التي يتم استدعاؤها عندما يتم إزالة الويدجت بشكل دائم من شجرة الويدجت. هذا هو المكان الذي يجب أن "تنظف" فيه وتتخلص من أي موارد كان الويدجت يستخدمها.

لماذا هي مهمة؟ إذا لم تقم بتحرير الموارد في dispose، يمكن أن يؤدي ذلك إلى تسريب الذاكرة (memory leaks). على سبيل المثال، إذا اشتركت في stream ولم تقم بإلغاء الاشتراك، سيظل الـ stream يرسل البيانات إلى كائن State الذي لم يعد موجودًا، مما يهدر الذاكرة وموارد المعالج.

ما الذي يجب التخلص منه؟

المتحكمات (Controllers): يجب استدعاء .dispose() على أي متحكم قمت بإنشائه (مثل textController.dispose()).
إلغاء الاشتراك من الـ Streams: يجب استدعاء .cancel() على أي StreamSubscription.
إلغاء المؤقتات (Timers): إذا كنت تستخدم Timer، يجب إلغاؤه.
قاعدة مهمة: يجب دائمًا استدعاء super.dispose() في نهاية الدالة لضمان تنفيذ الشيفرة الأساسية من الكلاس الأب State.

@override
void dispose() {
  // ضع هنا كود التنظيف الخاص بك
  // For example: myController.dispose();
  print("Widget has been disposed!");
  super.dispose(); // يجب استدعاؤها أخيرًا
}


 */
/* -------------------------------------------------------------------------- */
/*                                Explaination                                */
/* -------------------------------------------------------------------------- */
