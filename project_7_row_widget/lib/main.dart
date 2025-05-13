import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.red,
              height: 100,
              width: 100,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  'Hello World',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  'Hello World',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Container(
              color: Colors.green,
              height: 100,
              width: 100,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  'Hello World',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ],
          
        ),
        
      ),
    );
  }
}
