import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
        appBar: AppBar(
          title: Text("Search Delegate Widget"),
          actions: [
            Builder(
              builder: (context) => IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: MySearchDelegate());
                },
                icon: Icon(Icons.search),
              ),
            ),
          ],
          centerTitle: true,
        ),
        body: ListView(children: [
            
          ],
        ),
      ),
    );
  }
}

/// شرح كامل لـ SearchDelegate وجميع خصائصه في Flutter

class MySearchDelegate extends SearchDelegate {
  // قائمة البيانات التي سيتم البحث فيها
  final List<String> usernames = [
    "Alice", "Bob", "Charlie", "David", "Eve", "Frank", "Grace", "Heidi",
    "Ivan", "Judy", "Kevin", "Liam", "Mia", "Noah", "Olivia", "Peter",
    "Quinn", "Rachel", "Sam", "Tina", "Uma", "Victor", "Wendy", "Xavier",
    "Yara", "Zoe",
  ];

  // يمكنك استخدام هذه الخاصية لتخزين نتائج البحث المؤقتة
  List<String>? filteredList;

  /// خاصية searchFieldLabel:
  /// تتيح لك تخصيص النص الظاهر داخل مربع البحث (Placeholder)
  @override
  String get searchFieldLabel => 'ابحث عن اسم مستخدم';

  /// خاصية searchFieldStyle:
  /// لتخصيص نمط النص داخل مربع البحث
  @override
  TextStyle? get searchFieldStyle => const TextStyle(color: Colors.deepPurple);

  /// خاصية keyboardType:
  /// لتحديد نوع لوحة المفاتيح (نص، رقم، بريد إلكتروني...)
  @override
  TextInputType? get keyboardType => TextInputType.text;

  /// خاصية textInputAction:
  /// لتحديد زر الإجراء في لوحة المفاتيح (بحث، إرسال...)
  @override
  TextInputAction get textInputAction => TextInputAction.search;

  /// دالة buildActions:
  /// تبني أزرار الإجراءات في شريط البحث (يمين)، مثل زر المسح أو الميكروفون
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          if (query.isNotEmpty) {
            query = '';
          } else {
            close(context, '');
          }
        },
      ),
    ];
  }

  /// دالة buildLeading:
  /// تبني زر العودة (يسار شريط البحث)، غالباً زر الرجوع
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, ''),
    );
  }

  /// دالة buildResults:
  /// تبني واجهة نتائج البحث عند الضغط على زر البحث أو اختيار اقتراح
  @override
  Widget buildResults(BuildContext context) {
    final results = usernames
        .where((element) => element.toLowerCase().contains(query.toLowerCase()))
        .toList();

    if (results.isEmpty) {
      return Center(child: Text('لا توجد نتائج لـ "$query"'));
    }

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(results[index]),
        onTap: () => close(context, results[index]),
      ),
    );
  }

  /// دالة buildSuggestions:
  /// تبني قائمة الاقتراحات أثناء الكتابة في مربع البحث
  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
        ? usernames
        : usernames
            .where((element) => element.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.person),
        title: Text(suggestions[index]),
        onTap: () {
          query = suggestions[index];
          showResults(context);
        },
      ),
    );
  }

  /// خاصية appBarTheme:
  /// لتخصيص مظهر شريط البحث (الألوان، الخطوط...)
  @override
  ThemeData appBarTheme(BuildContext context) {
    final theme = Theme.of(context);
    return theme.copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.white70),
        border: InputBorder.none,
      ),
      textTheme: theme.textTheme.copyWith(
        titleLarge: const TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }

  /// خاصية query:
  /// النص الحالي في مربع البحث (يمكنك تعديله مباشرة)
  /// مثال: query = 'اسم جديد';

  /// خاصية transitionAnimation:
  /// للتحكم في حركة الانتقال بين الاقتراحات والنتائج (Animation)

  /// دالة showResults(context):
  /// تعرض نتائج البحث بناءً على النص الحالي

  /// دالة close(context, result):
  /// تغلق واجهة البحث وتعيد النتيجة المختارة

  /// دالة showSuggestions(context):
  /// تعرض الاقتراحات مرة أخرى

  /// دالة onQueryChanged(newQuery):
  /// تستدعى عند تغيير نص البحث (مفيدة للبحث الديناميكي أو جلب بيانات من API)
  @override
  void showResults(BuildContext context) {
    super.showResults(context);
    // يمكنك تنفيذ منطق إضافي هنا إذا أردت
  }
}



/* -------------------------------------------------------------------------- */
/*                                      .                                     */
/* -------------------------------------------------------------------------- */

/*
 
شرح شامل لـ SearchDelegate في Flutter
SearchDelegate هو ويدجت قوي في Flutter لبناء واجهات بحث متقدمة ومخصصة. دعني أشرحه لك بالتفصيل:

١. الأساسيات
الغرض: إنشاء واجهة بحث كاملة الشاشة مشابهة لتلك الموجودة في تطبيقات Google

المزايا:

واجهة بحث قابلة للتخصيص بالكامل

دعم للإكمال التلقائي والاقتراحات

فصل منطق البحث عن واجهة المستخدم

كيف يعمل:

dart
showSearch(
  context: context,
  delegate: MySearchDelegate(),
);
٢. الأجزاء الرئيسية
١. المتغيرات
query: نص البحث الحالي (يمكن التعديل عليه)

searchFieldLabel: تسمية حقل البحث (تظهر كـ placeholder)

٢. الدوال الأساسية (يجب تنفيذها)
أ) buildActions(BuildContext context)
الغرض: إنشاء أزرار الإجراءات في شريط التطبيق (الجانب الأيمن)

استخدام نموذجي: زر مسح البحث

مثال:

dart
@override
List<Widget> buildActions(BuildContext context) {
  return [
    IconButton(
      icon: const Icon(Icons.clear),
      onPressed: () {
        if (query.isEmpty) {
          close(context, null);
        } else {
          query = '';
        }
      },
    ),
  ];
}
ب) buildLeading(BuildContext context)
الغرض: إنشاء الزر الرئيسي في شريط التطبيق (الجانب الأيسر)

استخدام نموذجي: زر الرجوع

مثال:

dart
@override
Widget buildLeading(BuildContext context) {
  return IconButton(
    icon: const Icon(Icons.arrow_back),
    onPressed: () => close(context, null),
  );
}
ج) buildSuggestions(BuildContext context)
الغرض: بناء واجهة الاقتراحات أثناء الكتابة

مثال:

dart
@override
Widget buildSuggestions(BuildContext context) {
  final suggestions = data.where((item) {
    return item.toLowerCase().contains(query.toLowerCase());
  }).toList();
  
  return ListView.builder(
    itemCount: suggestions.length,
    itemBuilder: (context, index) => ListTile(
      title: Text(suggestions[index]),
      onTap: () {
        query = suggestions[index];
        showResults(context);
      },
    ),
  );
}
د) buildResults(BuildContext context)
الغرض: بناء واجهة نتائج البحث عند تأكيد البحث

مثال:

dart
@override
Widget buildResults(BuildContext context) {
  final results = data.where((item) {
    return item.toLowerCase().contains(query.toLowerCase());
  }).toList();
  
  return ListView.builder(
    itemCount: results.length,
    itemBuilder: (context, index) => ListTile(
      title: Text(results[index]),
      onTap: () => close(context, results[index]),
    ),
  );
}
٣. الدوال الإضافية (اختيارية)
أ) onQueryChanged(String newQuery)
الغرض: التنفيذ عند تغيير نص البحث

استخدام: تحديث الاقتراحات بشكل ديناميكي

مثال:

dart
@override
void onQueryChanged(String newQuery) {
  super.onQueryChanged(newQuery);
  // تحديث البيانات من مصدر خارجي
  fetchSuggestions(newQuery);
}
ب) close(BuildContext context, T result)
الغرض: إغلاق واجهة البحث وإرجاع النتيجة

استخدام: عند اختيار نتيجة أو الضغط على زر الرجوع

٤. التخصيص المتقدم
أ) تخصيص شريط البحث
dart
@override
ThemeData appBarTheme(BuildContext context) {
  return Theme.of(context).copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.white,
    ),
    textTheme: Theme.of(context).textTheme.copyWith(
          headline6: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: Colors.white70),
      border: InputBorder.none,
    ),
  );
}
ب) تخصيص حقل البحث
dart
@override
Widget buildSearchField(BuildContext context) {
  return TextField(
    controller: queryController,
    style: TextStyle(color: Colors.white),
    decoration: InputDecoration(
      hintText: 'ابحث هنا...',
      hintStyle: TextStyle(color: Colors.white70),
      border: InputBorder.none,
      prefixIcon: Icon(Icons.search, color: Colors.white),
      suffixIcon: IconButton(
        icon: Icon(Icons.mic),
        onPressed: () => startVoiceSearch(),
      ),
    ),
    onChanged: onQueryChanged,
  );
}
٥. دورة حياة البحث
showSearch(): فتح واجهة البحث

buildSuggestions(): عرض الاقتراحات أثناء الكتابة

buildResults(): عرض النتائج عند الضغط على زر البحث

close(): إغلاق واجهة البحث

onQueryChanged(): تحديث الاقتراحات عند تغيير النص

٦. مثال متكامل
dart
class AdvancedSearchDelegate extends SearchDelegate<String> {
  final List<String> allItems = [
    'Flutter', 'Dart', 'Widgets', 'State Management', 'Animation',
    'Navigation', 'Theming', 'Responsive Design', 'API Integration'
  ];

  @override
  String get searchFieldLabel => 'ابحث في وثائق Flutter';

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          icon: Icon(Icons.clear),
          onPressed: () => query = '',
        ),
      IconButton(
        icon: Icon(Icons.mic),
        onPressed: () => _startVoiceSearch(),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = _performSearch(query);
    return _buildResultList(results);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty 
        ? _getRecentSearches()
        : _performSearch(query);
    
    return _buildSuggestionList(suggestions);
  }

  List<String> _performSearch(String searchTerm) {
    return allItems.where((item) => 
      item.toLowerCase().contains(searchTerm.toLowerCase())
    ).toList();
  }

  Widget _buildSuggestionList(List<String> suggestions) {
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) => ListTile(
        leading: query.isEmpty ? Icon(Icons.history) : Icon(Icons.search),
        title: RichText(
          text: TextSpan(
            text: suggestions[index].substring(0, query.length),
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold
            ),
            children: [
              TextSpan(
                text: suggestions[index].substring(query.length),
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        onTap: () {
          query = suggestions[index];
          showResults(context);
        },
      ),
    );
  }

  Widget _buildResultList(List<String> results) {
    return results.isEmpty
        ? Center(child: Text('لا توجد نتائج لـ "$query"'))
        : ListView.builder(
            itemCount: results.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(results[index]),
              trailing: Icon(Icons.arrow_forward),
              onTap: () => close(context, results[index]),
            ),
          );
  }

  List<String> _getRecentSearches() {
    // يمكن استرجاعها من SharedPreferences أو قاعدة بيانات
    return ['Flutter', 'Animation', 'Navigation'];
  }

  void _startVoiceSearch() {
    // تنفيذ البحث الصوتي
  }
}
٧. نصائح احترافية
أداء البحث:

استخدم FutureBuilder للبحث غير المتزامن

استخدم debounce لتأخير البحث عند الكتابة السريعة

dart
Timer? _debounce;

@override
void onQueryChanged(String newQuery) {
  if (_debounce?.isActive ?? false) _debounce?.cancel();
  _debounce = Timer(const Duration(milliseconds: 500), () {
    // تنفيذ البحث هنا
  });
}
إدارة الحالة:

استخدم Provider أو Bloc للبحث المعقد

فصل منطق البحث عن الواجهة

التجربة البصرية:

أضف انتقالات متحركة

استخدم AnimatedList للنتائج

أضف مؤشر تحميل أثناء البحث

الذاكرة المؤقتة:

خزن عمليات البحث الأخيرة

خزن النتائج للاستعلامات المتكررة

البحث المتقدم:

أضف مرشحات للبحث

دعم البحث في محتوى متعدد اللغات

دمج البحث الضبابي (Fuzzy Search)

٨. الاستخدام الأمثل
dart
// في الشاشة الرئيسية
IconButton(
  icon: Icon(Icons.search),
  onPressed: () async {
    final result = await showSearch(
      context: context,
      delegate: AdvancedSearchDelegate(),
    );
    
    if (result != null) {
      // معالجة النتيجة
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => DetailPage(item: result)
      ));
    }
  },
)
SearchDelegate يوفر حلًا متكاملًا ومخصصًا لواجهات البحث في Flutter، ويمنحك التحكم الكامل في كل جانب من جوانب تجربة البحث.






 */


/* -------------------------------------------------------------------------- */
/*                                      .                                     */
/* -------------------------------------------------------------------------- */