import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final FocusNode _nameFocus = FocusNode();
  final FocusNode _emailFocus = FocusNode();

  String? _name;
  String? _email;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _nameFocus.dispose();
    _emailFocus.dispose();
    super.dispose();
  }

  void _resetForm() {
    _formKey.currentState?.reset();
    _nameController.clear();
    _emailController.clear();
    setState(() {
      _name = null;
      _email = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text("TextFormField Widget")),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key:
                _formKey, // مفتاح النموذج للتحقق من صحة النموذج أو إعادة تعيينه
            autovalidateMode: AutovalidateMode
                .disabled, // وضع التحقق التلقائي (ممكن تغييره إلى onUserInteraction أو always)
            onWillPop: () async {
              // دالة تُنفذ عند محاولة الرجوع للخلف
              return true;
            },
            onChanged: () {
              // دالة تُنفذ عند تغيير أي عنصر في النموذج
            },
            child: Column(
              children: [
                TextFormField(
                  controller: _nameController, // متحكم النص
                  focusNode: _nameFocus, // عقدة التركيز
                  decoration: InputDecoration(
                    labelText: 'الاسم', // نص التسمية
                    hintText: 'أدخل اسمك', // نص التلميح
                    prefixIcon: Icon(Icons.person), // أيقونة في البداية
                    border: OutlineInputBorder(), // شكل الحقل
                  ),
                  keyboardType: TextInputType.text, // نوع لوحة المفاتيح
                  textInputAction:
                      TextInputAction.next, // زر الإجراء في لوحة المفاتيح
                  style: TextStyle(fontSize: 16), // نمط النص
                  textAlign: TextAlign.start, // محاذاة النص
                  autofocus: false, // التركيز التلقائي
                  obscureText: false, // إخفاء النص (للكلمات السرية)
                  maxLength: 50, // الحد الأقصى للأحرف
                  maxLines: 1, // عدد الأسطر
                  enabled: true, // تمكين الحقل
                  readOnly: false, // للقراءة فقط
                  validator: (value) {
                    // دالة التحقق من صحة الإدخال
                    if (value == null || value.isEmpty) {
                      return 'الرجاء إدخال الاسم';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    // دالة الحفظ عند حفظ النموذج
                    _name = value;
                  },
                  onChanged: (value) {
                    // دالة عند تغيير النص
                  },
                  onFieldSubmitted: (value) {
                    // دالة عند إرسال الحقل
                    FocusScope.of(context).requestFocus(_emailFocus);
                  },
                  onTap: () {
                    // دالة عند الضغط على الحقل
                  },
                  inputFormatters: const [], // منسقات الإدخال
                  // حدود عند التمكين/التركيز/الخطأ/التعطيل يجب أن توضع داخل InputDecoration وليس هنا
                  cursorColor: Colors.blue, // لون المؤشر
                  cursorWidth: 2.0, // عرض المؤشر
                  cursorRadius: Radius.circular(2.0), // نصف قطر المؤشر
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _emailController,
                  focusNode: _emailFocus,
                  decoration: InputDecoration(
                    labelText: 'البريد الإلكتروني',
                    hintText: 'أدخل بريدك الإلكتروني',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.start,
                  autofocus: false,
                  obscureText: false,
                  maxLength: 100,
                  maxLines: 1,
                  enabled: true,
                  readOnly: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'الرجاء إدخال البريد الإلكتروني';
                    }
                    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'البريد الإلكتروني غير صالح';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _email = value;
                  },
                  onChanged: (value) {},
                  onFieldSubmitted: (value) {},
                  onTap: () {},
                  inputFormatters: const [],
                  cursorColor: Colors.blue,
                  cursorWidth: 2.0,
                  cursorRadius: Radius.circular(2.0),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          _formKey.currentState?.save();
                          // تنفيذ ما تريد بعد الحفظ
                        }
                      },
                      child: Text('حفظ'),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: _resetForm,
                      child: Text('إعادة تعيين'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
