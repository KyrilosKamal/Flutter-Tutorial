// import 'package:flutter/material.dart';

// void main() {
//   runApp(PointsCounter());
// }

// class PointsCounter extends StatefulWidget {
//   @override
//   State<PointsCounter> createState() => _PointsCounterState();
// }

// class _PointsCounterState extends State<PointsCounter> {
//   int teamAPoints = 0, teamBPoints = 0;

//   void addPoints(String team, int points) {
//     // تحقق أولاً إذا كانت الإضافة هتعدي 100
//     if (team == 'A' && teamAPoints + points > 100) {
//       showLimitAlert();
//       return;
//     } else if (team == 'B' && teamBPoints + points > 100) {
//       showLimitAlert();
//       return;
//     }

//     // لو مفيش تجاوز، ضيف النقاط
//     setState(() {
//       if (team == 'A') {
//         teamAPoints += points;
//       } else {
//         teamBPoints += points;
//       }
//     });
//   }

//   void showLimitAlert() {
//     showDialog(
//       context: context,
//       builder:
//           (_) => AlertDialog(
//             title: Text("Alert"),
//             content: Text("No more than 100 points allowed"),
//             actions: [
//               TextButton(
//                 onPressed: () => Navigator.pop(context),
//                 child: Text("Okay"),
//               ),
//             ],
//           ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Basketball Points Counter"),
//           backgroundColor: Colors.orange,
//         ),
//         body: Column(
//           children: [
//             const Spacer(),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     Text("Team A", style: TextStyle(fontSize: 32)),
//                     Text('$teamAPoints', style: TextStyle(fontSize: 100)),

//                     ElevatedButton(
//                       onPressed: () {
//                         addPoints('A', 1);
//                         setState(() => {});
//                       },
//                       style: ElevatedButton.styleFrom(
//                         minimumSize: Size(150, 55),
//                         backgroundColor: Colors.orange,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(4),
//                         ),
//                       ),
//                       child: Text(
//                         "App 1 Point ",
//                         style: TextStyle(fontSize: 18, color: Colors.black),
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     ElevatedButton(
//                       onPressed: () {
//                         setState(() => {addPoints('A', 2)});
//                       },
//                       style: ElevatedButton.styleFrom(
//                         padding: EdgeInsets.all(8),
//                         minimumSize: Size(150, 55),
//                         backgroundColor: Colors.orange,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(4),
//                         ),
//                       ),
//                       child: Text(
//                         "App 2 Point ",
//                         style: TextStyle(fontSize: 18, color: Colors.black),
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     ElevatedButton(
//                       onPressed: () {
//                         setState(() => addPoints('A', 3));
//                       },
//                       style: ElevatedButton.styleFrom(
//                         minimumSize: Size(150, 55),
//                         backgroundColor: Colors.orange,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(4),
//                         ),
//                       ),
//                       child: Text(
//                         "App 3 Point ",
//                         style: TextStyle(fontSize: 18, color: Colors.black),
//                       ),
//                     ),
//                   ],
//                 ),

//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.55,
//                   child: VerticalDivider(
//                     color: Colors.grey,
//                     thickness: 1,
//                     width: 25,
//                   ),
//                 ),

//                 Column(
//                   children: [
//                     Text("Team B", style: TextStyle(fontSize: 32)),
//                     Text('$teamBPoints', style: TextStyle(fontSize: 100)),

//                     ElevatedButton(
//                       onPressed:
//                           () => {
//                             setState(() {
//                               addPoints('B', 1);
//                             }),
//                           },
//                       style: ElevatedButton.styleFrom(
//                         minimumSize: Size(150, 55),
//                         backgroundColor: Colors.orange,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(4),
//                         ),
//                       ),
//                       child: Text(
//                         "App 1 Point ",
//                         style: TextStyle(fontSize: 18, color: Colors.black),
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     ElevatedButton(
//                       onPressed:
//                           () => {
//                             setState(() {
//                               addPoints('B', 2);
//                             }),
//                           },
//                       style: ElevatedButton.styleFrom(
//                         minimumSize: Size(150, 55),
//                         backgroundColor: Colors.orange,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(4),
//                         ),
//                       ),
//                       child: Text(
//                         "App 2 Point ",
//                         style: TextStyle(fontSize: 18, color: Colors.black),
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     ElevatedButton(
//                       onPressed:
//                           () => {
//                             setState(() {
//                               addPoints('B', 3);
//                             }),
//                           },
//                       style: ElevatedButton.styleFrom(
//                         minimumSize: Size(150, 55),
//                         backgroundColor: Colors.orange,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(4),
//                         ),
//                       ),
//                       child: Text(
//                         "App 3 Point ",
//                         style: TextStyle(fontSize: 18, color: Colors.black),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             const Spacer(),
//             ElevatedButton(
//               onPressed:
//                   () => {
//                     setState(() {
//                       teamAPoints = 0;
//                       teamBPoints = 0;
//                     }),
//                   },
//               style: ElevatedButton.styleFrom(
//                 minimumSize: Size(150, 55),
//                 backgroundColor: Colors.orange,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(4),
//                 ),
//               ),
//               child: Text(
//                 "Reset Points ",
//                 style: TextStyle(fontSize: 18, color: Colors.black),
//               ),
//             ),
//             const Spacer(),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PointsCounter(),
    );
  }
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0, teamBPoints = 0;
  final int maxPoints = 100;

  void addPoints(String team, int points) {
    if (team == 'A' && teamAPoints + points > maxPoints) {
      showLimitAlert('A');
      return;
    } else if (team == 'B' && teamBPoints + points > maxPoints) {
      showLimitAlert('B');
      return;
    }

    setState(() {
      if (team == 'A') {
        teamAPoints += points;
      } else {
        teamBPoints += points;
      }
    });
  }

  void showLimitAlert(String team) {
    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            title: Text("Limit Reached"),
            content: Text("Team $team cannot exceed $maxPoints points."),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Okay"),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isLandscape = size.width > size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Basketball Score Counter"),
        backgroundColor: Colors.orange,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth > 600;
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: Flex(
                    direction:
                        isWide || isLandscape ? Axis.horizontal : Axis.vertical,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: buildTeamColumn("A", teamAPoints)),
                      VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                        width: isWide ? 40 : 10,
                      ),
                      Expanded(child: buildTeamColumn("B", teamBPoints)),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      teamAPoints = 0;
                      teamBPoints = 0;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Reset Points",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildTeamColumn(String team, int points) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Team $team", style: TextStyle(fontSize: 28)),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('$points', style: TextStyle(fontSize: 100)),
        ),
        const SizedBox(height: 16),
        for (int i = 1; i <= 3; i++) ...[
          ElevatedButton(
            onPressed: () => addPoints(team, i),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 50),
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: Text(
              "Add $i Point${i > 1 ? 's' : ''}",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
          const SizedBox(height: 12),
        ],
      ],
    );
  }
}
