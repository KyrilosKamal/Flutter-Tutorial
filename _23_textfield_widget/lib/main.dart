import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("TextField Example")),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller:
                    null, // وحدة تحكم النص (TextEditingController) للتحكم في النص داخل الحقل
                focusNode:
                    null, // عقدة التركيز (FocusNode) للتحكم في التركيز على الحقل
                decoration: InputDecoration(
                  icon: null, // أيقونة تظهر بجانب الحقل (خارج الإطار)
                  labelText: null, // نص يظهر كعنوان للحقل (يطفو عند الكتابة)
                  labelStyle: null, // نمط نص العنوان
                  helperText: null, // نص مساعد أسفل الحقل
                  helperStyle: null, // نمط نص المساعد
                  helperMaxLines: null, // الحد الأقصى لأسطر النص المساعد
                  hintText: null, // نص تلميحي داخل الحقل (يختفي عند الكتابة)
                  hintStyle: null, // نمط النص التلميحي
                  hintTextDirection: null, // اتجاه النص التلميحي
                  hintMaxLines: null, // الحد الأقصى لأسطر النص التلميحي
                  errorText: null, // نص رسالة الخطأ أسفل الحقل
                  errorStyle: null, // نمط نص الخطأ
                  errorMaxLines: null, // الحد الأقصى لأسطر نص الخطأ
                  floatingLabelBehavior: null, // سلوك عنوان الحقل عند التركيز
                  floatingLabelAlignment: null, // محاذاة عنوان الحقل العائم
                  isCollapsed: false, // تقليص الحشو الداخلي للحقل
                  isDense: false, // تقليل ارتفاع الحقل
                  contentPadding: null, // الحشو الداخلي لمحتوى الحقل
                  prefixIcon: null, // أيقونة تظهر داخل الحقل في البداية
                  prefixIconConstraints: null, // قيود حجم أيقونة البداية
                  prefix: null, // عنصر يظهر قبل النص داخل الحقل
                  prefixText: null, // نص يظهر قبل النص داخل الحقل
                  prefixStyle: null, // نمط نص البداية
                  suffixIcon: null, // أيقونة تظهر داخل الحقل في النهاية
                  suffixIconConstraints: null, // قيود حجم أيقونة النهاية
                  suffix: null, // عنصر يظهر بعد النص داخل الحقل
                  suffixText: null, // نص يظهر بعد النص داخل الحقل
                  suffixStyle: null, // نمط نص النهاية
                  counter: null, // عنصر مخصص لعداد الأحرف
                  counterText: null, // نص عداد الأحرف
                  counterStyle: null, // نمط نص العداد
                  filled: false, // تفعيل تعبئة خلفية الحقل
                  fillColor: null, // لون تعبئة خلفية الحقل
                  focusColor: null, // لون الحقل عند التركيز
                  hoverColor: null, // لون الحقل عند المرور بالفأرة
                  border:
                      OutlineInputBorder(), // الإطار الافتراضي للحقل (يحدد شكل الإطار حول الحقل)
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                  ), // إطار الحقل عند التفعيل (يظهر عندما يكون الحقل مفعلًا وليس عليه تركيز)
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ), // إطار الحقل عند التركيز (يظهر عندما يكون الحقل عليه تركيز)
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                  ), // إطار الحقل عند وجود خطأ (يظهر عندما يكون هناك رسالة خطأ)
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 2.0),
                  ), // إطار الحقل عند التركيز مع وجود خطأ (يظهر عندما يكون الحقل عليه تركيز ويوجد خطأ)
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ), // إطار الحقل عند التعطيل (يظهر عندما يكون الحقل غير مفعل)
                  enabled: true, // تفعيل أو تعطيل الحقل
                  semanticCounterText: null, // نص عداد مخصص لذوي الاحتياجات
                  alignLabelWithHint: false, // محاذاة العنوان مع النص التلميحي
                  constraints: null, // قيود حجم الحقل
                ), // تزيين الحقل مثل النص المساعد والأيقونات
                keyboardType: TextInputType
                    .text, // نوع لوحة المفاتيح (نص، رقم، بريد إلكتروني...)
                textInputAction: TextInputAction
                    .done, // زر الإجراء في لوحة المفاتيح (التالي، تم...)
                textCapitalization: TextCapitalization
                    .none, // طريقة تحويل الحروف الكبيرة/الصغيرة تلقائياً
                style: TextStyle(), // نمط النص داخل الحقل
                strutStyle: StrutStyle(), // نمط ارتفاع السطر للنص
                textAlign: TextAlign.start, // محاذاة النص داخل الحقل
                textAlignVertical:
                    TextAlignVertical.center, // محاذاة النص عمودياً
                autofocus: false, // بدء الحقل مع تركيز تلقائي أم لا
                readOnly: false, // جعل الحقل للقراءة فقط
                toolbarOptions:
                    ToolbarOptions(), // خيارات شريط الأدوات (نسخ، لصق...)
                showCursor: true, // إظهار أو إخفاء المؤشر
                obscuringCharacter:
                    '•', // رمز إخفاء النص (عند استخدام obscureText)
                obscureText: false, // إخفاء النص (مفيد لكلمات المرور)
                autocorrect: true, // تفعيل التصحيح التلقائي
                smartDashesType: SmartDashesType.disabled, // نوع الشرطات الذكية
                smartQuotesType:
                    SmartQuotesType.enabled, // نوع علامات الاقتباس الذكية
                enableSuggestions: true, // تفعيل اقتراحات النص
                maxLines: 1, // الحد الأقصى لعدد الأسطر
                minLines: null, // الحد الأدنى لعدد الأسطر
                expands: false, // توسيع الحقل ليملأ المساحة المتاحة
                maxLength: null, // الحد الأقصى لعدد الأحرف
                maxLengthEnforcement:
                    MaxLengthEnforcement.none, // طريقة تطبيق الحد الأقصى للأحرف
                onChanged: (value) {}, // دالة عند تغيير النص
                onEditingComplete: () {}, // دالة عند انتهاء التحرير
                onSubmitted: (value) {}, // دالة عند إرسال النص
                onTap: () {}, // دالة عند الضغط على الحقل
                inputFormatters: [], // منسقات النص (مثل السماح بالأرقام فقط)
                enabled: true, // تفعيل أو تعطيل الحقل
                cursorWidth: 2.0, // عرض المؤشر
                cursorHeight: null, // ارتفاع المؤشر
                cursorRadius: Radius.circular(2.0), // نصف قطر المؤشر
                cursorColor: null, // لون المؤشر
                selectionHeightStyle:
                    BoxHeightStyle.tight, // نمط ارتفاع التحديد
                selectionWidthStyle: BoxWidthStyle.tight, // نمط عرض التحديد
                keyboardAppearance:
                    Brightness.light, // مظهر لوحة المفاتيح (فاتح/غامق)
                scrollPadding: EdgeInsets.all(20.0), // الحشو عند التمرير
                enableInteractiveSelection: true, // تفعيل تحديد النص
                selectionControls: null, // عناصر تحكم التحديد المخصصة
                onTapOutside: (event) {}, // دالة عند الضغط خارج الحقل
                mouseCursor: null, // مؤشر الفأرة عند المرور فوق الحقل
                buildCounter: null, // عنصر مخصص لعداد الأحرف
                scrollController: null, // وحدة تحكم التمرير
                scrollPhysics: null, // فيزياء التمرير
                autofillHints: null, // اقتراحات الملء التلقائي
                clipBehavior: Clip.hardEdge, // سلوك القص للحواف
                restorationId: null, // معرف الاستعادة للحالة
                scribbleEnabled: true, // دعم الكتابة اليدوية (iOS/iPadOS)
                enableIMEPersonalizedLearning:
                    true, // تفعيل التعلم المخصص للوحة المفاتيح
              ),
            ],
          ),
        ),
      ),
    );
  }
}
