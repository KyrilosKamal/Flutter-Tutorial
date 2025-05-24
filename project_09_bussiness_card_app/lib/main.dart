import 'package:flutter/material.dart';

void main() {
  runApp(BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 112,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 110,
                backgroundImage: AssetImage("assets/images/kklogo.png"),
              ),
            ),
            Text(
              "Kyrillos Kamal",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontFamily: 'PlaywriteDKLoopet',
                letterSpacing: 2,
                height: 4,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Flutter Student",
              style: TextStyle(
                fontFamily: 'PlaywriteDKLoopet',
                fontSize: 15,
                height: -1,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              color: Colors.white,
              indent: 60,
              endIndent: 60,
              height: 10,
              thickness: 1,
            ),
            Card(
              shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(3)),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: Icon(Icons.phone, size: 32, color: Colors.black),
                title: Text(
                  "(+20) 122 801 1332",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'PlaywriteDKLoopet',
                  ),
                ),
              ),
            ),
            Card(
              shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(3)),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: Icon(Icons.email, size: 32, color: Colors.black),
                title: Text(
                  "kirllos2000@outlook.com",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'PlaywriteDKLoopet',
                  ),
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            //   child: Container(
            //     margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(10),
            //     ),

            //     height: 60,
            //     // width: 60,
            //     // height: 60,
            //     child: Row(
            //       children: [
            //         Padding(
            //           padding: EdgeInsets.only(left: 10),
            //           child: Icon(Icons.phone, size: 32, color: Colors.black),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.only(left: 16),
            //           child: Text(
            //             "(+20) 122 801 1332",
            //             style: TextStyle(
            //               fontSize: 20,
            //               fontFamily: 'PlaywriteDKLoopet',
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // )

            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            //   child: Container(
            //     margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(10),
            //     ),

            //     height: 60,
            //     // width: 60,
            //     // height: 60,
            //     child: Row(
            //       children: [
            //         Padding(
            //           padding: EdgeInsets.only(left: 10),
            //           child: Icon(Icons.email, size: 32, color: Colors.black),
            //         ),

            //         Padding(

            //           padding: EdgeInsets.only(left: 16),
            //           child: Text(
            //             "kirllos2000@outlook.com",
            //             style: TextStyle(fontSize: 23),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
