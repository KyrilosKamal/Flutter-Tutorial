import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List users = [
    {"name": "Kyrillos", "age": 30, "Phone": '+201228011332'},
    {"name": "Andrew", "age": 29, "Phone": '+201228745965'},
    {"name": "Liza", "age": 26, "Phone": '+201223578855'},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("List Generate")),
        body: ListView(
          children: [
            ...List.generate(users.length, (index) {
              return Card(
                elevation: 7,
                child: ListTile(
                  title: Text('Name: ${users[index]['name']}'),
                  subtitle: Text('Age: ${users[index]['age']}'),
                  leading: Text('${users[index]['Phone']}'),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
