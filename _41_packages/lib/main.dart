import 'package:awesome_dialog/awesome_dialog.dart'; // استيراد مكتبة Awesome Dialog لإظهار الحوارات المنسقة
import 'package:flutter/material.dart'; // استيراد مكتبة Flutter لبناء واجهة المستخدم

void main() => runApp(const MyApp()); // دالة البداية: تشغيل التطبيق باستخدام MyApp

class MyApp extends StatelessWidget { // تعريف كلاس MyApp كـ StatelessWidget (واجهة بدون حالة)
  const MyApp({Key? key}) : super(key: key); // مُنشئ الكلاس مع مفتاح اختياري

  @override
  Widget build(BuildContext context) { // دالة البناء لإنشاء واجهة التطبيق
    return MaterialApp( // إنشاء تطبيق من نوع MaterialApp
        title: 'Fancy Dialog Example', // عنوان التطبيق
        theme: ThemeData.dark(), // تعيين الثيم إلى الوضع الداكن
        initialRoute: '/', // تعيين المسار الابتدائي
        home: HomePage()); // تعيين الصفحة الرئيسية إلى HomePage
  }
}

class HomePage extends StatefulWidget { // تعريف كلاس HomePage كـ StatefulWidget (واجهة لها حالة)
  const HomePage({
    Key? key,
  }) : super(key: key); // مُنشئ الكلاس مع مفتاح اختياري

  @override
  _HomePageState createState() => _HomePageState(); // إنشاء الحالة المرتبطة بالواجهة
}

class _HomePageState extends State<HomePage> { // تعريف كلاس الحالة للصفحة الرئيسية
  @override
  Widget build(BuildContext context) { // دالة البناء لإنشاء واجهة الصفحة
    return Scaffold( // إنشاء هيكل الصفحة الرئيسي
      appBar: AppBar( // شريط التطبيق العلوي
        title: const Text('Awesome Dialog Example'), // عنوان الشريط العلوي
      ),
      body: Center( // محتوى الصفحة في المنتصف
        child: Container( // حاوية لتحديد الحشو الداخلي
          padding: const EdgeInsets.all(16), // إضافة حشو بمقدار 16 بكسل من جميع الجهات
          child: SingleChildScrollView( // تمكين التمرير عند امتلاء الشاشة
            child: Column( // ترتيب العناصر عمودياً
              children: <Widget>[ // قائمة العناصر
                AnimatedButton( // زر متحرك
                  text: 'Info Dialog fixed width and square buttons', // نص الزر
                  pressEvent: () { // حدث الضغط على الزر
                    AwesomeDialog( // إنشاء حوار AwesomeDialog
                      context: context, // تمرير السياق
                      dialogType: DialogType.info, // نوع الحوار: معلومات
                      borderSide: const BorderSide( // تحديد حدود الحوار
                        color: Colors.green, // لون الحدود أخضر
                        width: 2, // عرض الحدود 2 بكسل
                      ),
                      width: 280, // عرض الحوار 280 بكسل
                      buttonsBorderRadius: const BorderRadius.all( // تحديد استدارة أزرار الحوار
                        Radius.circular(2), // استدارة بسيطة (مربعة تقريباً)
                      ),
                      dismissOnTouchOutside: true, // إغلاق الحوار عند لمس الخارج
                      dismissOnBackKeyPress: false, // عدم الإغلاق عند الضغط على زر الرجوع
                      onDismissCallback: (type) { // دالة عند إغلاق الحوار
                        ScaffoldMessenger.of(context).showSnackBar( // إظهار رسالة قصيرة
                          SnackBar(
                            content: Text('Dismissed by $type'), // نص الرسالة يوضح سبب الإغلاق
                          ),
                        );
                      },
                      headerAnimationLoop: false, // تعطيل تكرار حركة الرأس
                      animType: AnimType.bottomSlide, // نوع الحركة: من الأسفل للأعلى
                      title: 'INFO', // عنوان الحوار
                      desc: 'This Dialog can be dismissed touching outside', // وصف الحوار
                      showCloseIcon: true, // إظهار زر الإغلاق
                      btnCancelOnPress: () {}, // حدث زر الإلغاء
                      btnOkOnPress: () {}, // حدث زر الموافقة
                    ).show(); // عرض الحوار
                  },
                ),
                const SizedBox(
                  height: 16, // إضافة فراغ رأسي بمقدار 16 بكسل
                ),
                AnimatedButton(
                  text: 'Warning Dialog With Custom BTN Style', // نص الزر
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.warning, // نوع الحوار: تحذير
                      headerAnimationLoop: false,
                      animType: AnimType.bottomSlide,
                      title: 'Question',
                      desc: 'Dialog description here...',
                      buttonsTextStyle: const TextStyle(color: Colors.black), // تخصيص لون نص الأزرار
                      showCloseIcon: true,
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    ).show();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AnimatedButton(
                  text: 'Info Reverse Dialog Without buttons',
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.infoReverse, // نوع الحوار: معلومات مع عكس الأزرار
                      headerAnimationLoop: true, // تكرار حركة الرأس
                      animType: AnimType.bottomSlide,
                      title: 'INFO Reversed',
                      reverseBtnOrder: true, // عكس ترتيب الأزرار
                      btnOkOnPress: () {},
                      btnCancelOnPress: () {},
                      desc:
                          'Lorem ipsum dolor sit amet consectetur adipiscing elit eget ornare tempus, vestibulum sagittis rhoncus felis hendrerit lectus ultricies duis vel, id morbi cum ultrices tellus metus dis ut donec. Ut sagittis viverra venenatis eget euismod faucibus odio ligula phasellus,',
                    ).show();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AnimatedButton(
                  text: 'Warning Dialog',
                  color: Colors.orange, // لون الزر برتقالي
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.warning,
                      headerAnimationLoop: false,
                      animType: AnimType.topSlide, // حركة من الأعلى للأسفل
                      showCloseIcon: true,
                      closeIcon: const Icon(Icons.close_fullscreen_outlined), // تخصيص أيقونة الإغلاق
                      title: 'Warning',
                      desc:
                          'Dialog description here..................................................',
                      btnCancelOnPress: () {},
                      onDismissCallback: (type) {
                        debugPrint('Dialog Dismiss from callback $type'); // طباعة سبب الإغلاق في وحدة التصحيح
                      },
                      btnOkOnPress: () {},
                    ).show();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AnimatedButton(
                  text: 'Error Dialog',
                  color: Colors.red, // لون الزر أحمر
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error, // نوع الحوار: خطأ
                      animType: AnimType.rightSlide, // حركة من اليمين لليسار
                      headerAnimationLoop: false,
                      title: 'Error',
                      desc:
                          'Dialog description here..................................................',
                      btnOkOnPress: () {},
                      btnOkIcon: Icons.cancel, // أيقونة زر الموافقة
                      btnOkColor: Colors.red, // لون زر الموافقة أحمر
                    ).show();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AnimatedButton(
                  text: 'Question Dialog',
                  color: Colors.amber, // لون الزر أصفر
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.question, // نوع الحوار: سؤال
                      animType: AnimType.rightSlide,
                      headerAnimationLoop: true,
                      title: 'Question',
                      desc:
                          'Dialog description here..................................................',
                      btnOkOnPress: () {},
                    ).show();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AnimatedButton(
                  text: 'Success Dialog',
                  color: Colors.green, // لون الزر أخضر
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      animType: AnimType.leftSlide, // حركة من اليسار لليمين
                      headerAnimationLoop: false,
                      dialogType: DialogType.success, // نوع الحوار: نجاح
                      showCloseIcon: true,
                      title: 'Succes',
                      desc:
                          'Dialog description here..................................................',
                      btnOkOnPress: () {
                        debugPrint('OnClcik'); // طباعة عند الضغط على زر الموافقة
                      },
                      btnOkIcon: Icons.check_circle, // أيقونة زر الموافقة
                      onDismissCallback: (type) {
                        debugPrint('Dialog Dissmiss from callback $type');
                      },
                    ).show();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AnimatedButton(
                  text: 'No Header Dialog',
                  color: Colors.cyan, // لون الزر سماوي
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      headerAnimationLoop: false,
                      dialogType: DialogType.noHeader, // نوع الحوار بدون رأس
                      title: 'No Header',
                      desc:
                          'Dialog description here..................................................',
                      btnOkOnPress: () {
                        debugPrint('OnClcik');
                      },
                      btnOkIcon: Icons.check_circle,
                    ).show();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AnimatedButton(
                  text: 'Custom Body Dialog',
                  color: Colors.blueGrey, // لون الزر رمادي مزرق
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      animType: AnimType.scale, // حركة تكبير وتصغير
                      dialogType: DialogType.info,
                      body: const Center( // تخصيص جسم الحوار
                        child: Text(
                          'If the body is specified, then title and description will be ignored, this allows to further customize the dialogue.',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      title: 'This is Ignored', // سيتم تجاهل العنوان والوصف
                      desc: 'This is also Ignored',
                    ).show();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AnimatedButton(
                  text: 'Auto Hide Dialog',
                  color: Colors.purple, // لون الزر بنفسجي
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.infoReverse,
                      animType: AnimType.scale,
                      title: 'Auto Hide Dialog',
                      desc: 'AutoHide after 2 seconds', // إخفاء تلقائي بعد ثانيتين
                      autoHide: const Duration(seconds: 2), // مدة الإخفاء التلقائي
                      onDismissCallback: (type) {
                        debugPrint('Dialog Dissmiss from callback $type');
                      },
                    ).show();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AnimatedButton(
                  text: 'Testing Dialog',
                  color: Colors.orange,
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      keyboardAware: true, // جعل الحوار يتفاعل مع لوحة المفاتيح
                      dismissOnBackKeyPress: false,
                      dialogType: DialogType.warning,
                      animType: AnimType.bottomSlide,
                      btnCancelText: "Cancel Order", // نص زر الإلغاء
                      btnOkText: "Yes, I will pay", // نص زر الموافقة
                      title: 'Continue to pay?',
                      // padding: const EdgeInsets.all(5.0),
                      desc:
                          'Please confirm that you will pay 3000 INR within 30 mins. Creating orders without paying will create penalty charges, and your account may be disabled.',
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    ).show();
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AnimatedButton(
                  text: 'Body with Input',
                  color: Colors.blueGrey,
                  pressEvent: () {
                    late AwesomeDialog dialog; // تعريف متغير للحوار
                    dialog = AwesomeDialog(
                      context: context,
                      animType: AnimType.scale,
                      dialogType: DialogType.info,
                      keyboardAware: true,
                      body: Padding( // جسم الحوار يحتوي على نموذج إدخال
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Form Data',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Material(
                              elevation: 0,
                              color: Colors.blueGrey.withAlpha(40),
                              child: TextFormField(
                                autofocus: true,
                                minLines: 1,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'Title',
                                  prefixIcon: Icon(Icons.text_fields),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Material(
                              elevation: 0,
                              color: Colors.blueGrey.withAlpha(40),
                              child: TextFormField(
                                autofocus: true,
                                keyboardType: TextInputType.multiline,
                                minLines: 2,
                                maxLines: null,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'Description',
                                  prefixIcon: Icon(Icons.text_fields),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            AnimatedButton(
                              isFixedHeight: false,
                              text: 'Close',
                              pressEvent: () {
                                dialog.dismiss(); // إغلاق الحوار عند الضغط على زر الإغلاق
                              },
                            )
                          ],
                        ),
                      ),
                    )..show(); // عرض الحوار
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                AnimatedButton(
                  text: 'Passing Data Back from Dialog',
                  pressEvent: () async {
                    final dismissMode = await AwesomeDialog(
                      context: context,
                      dialogType: DialogType.noHeader,
                      buttonsBorderRadius: const BorderRadius.all(
                        Radius.circular(2),
                      ),
                      animType: AnimType.rightSlide,
                      title: 'Passing Data Back',
                      titleTextStyle: const TextStyle(
                        fontSize: 32,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                      ),
                      desc: 'Dialog description here...',
                      showCloseIcon: true,
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                      autoDismiss: false, // عدم الإغلاق التلقائي
                      onDismissCallback: (type) {
                        Navigator.of(context).pop(type); // إعادة نوع الإغلاق إلى الصفحة الرئيسية
                      },
                      barrierColor: Colors.purple[900]?.withOpacity(0.54), // لون خلفية الحاجز
                    ).show();

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Dismissed by $dismissMode'), // إظهار سبب الإغلاق في رسالة قصيرة
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}