import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Use LayoutBuilder for responsiveness
    return Scaffold(
      appBar: AppBar(title: const Text("Mini Project")),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth > 600;
          final horizontalPadding = isWide ? constraints.maxWidth * 0.15 : 16.0;
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  InfoContainer(
                    child: Text(
                      "Strawberry Pavlova",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  InfoContainer(
                    child: Text(
                      "Pavlova is a meringue-based dessert named after Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  ReviewRow(),
                  DetailsRow(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class InfoContainer extends StatelessWidget {
  final Widget child;
  const InfoContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery for responsive padding/margin
    final width = MediaQuery.of(context).size.width;
    final margin = width > 600 ? 20.0 : 10.0;
    final padding = width > 600 ? 24.0 : 15.0;
    return Container(
      margin: EdgeInsets.symmetric(vertical: margin),
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        color: const Color.fromARGB(255, 163, 194, 248),
        borderRadius: BorderRadius.circular(12),
      ),
      alignment: Alignment.center,
      width: double.infinity,
      child: child,
    );
  }
}

class ReviewRow extends StatelessWidget {
  const ReviewRow({super.key});

  @override
  Widget build(BuildContext context) {
    return InfoContainer(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth > 400;
          return Flex(
            direction: isWide ? Axis.horizontal : Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  5,
                  (index) =>
                      const Icon(Icons.star, color: Colors.black, size: 24),
                ),
              ),
              SizedBox(width: isWide ? 30 : 0, height: isWide ? 0 : 10),
              const Text("170 Reviews", style: TextStyle(fontSize: 18)),
            ],
          );
        },
      ),
    );
  }
}

class DetailsRow extends StatelessWidget {
  const DetailsRow({super.key});

  @override
  Widget build(BuildContext context) {
    // Responsive: Use Wrap instead of Row for small screens
    return InfoContainer(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth > 400;
          return isWide
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    DetailColumn(
                      icon: Icons.kitchen_outlined,
                      label: "PREP:",
                      value: "25 minutes",
                    ),
                    DetailColumn(
                      icon: Icons.access_time,
                      label: "COOK:",
                      value: "1 hr",
                    ),
                    DetailColumn(
                      icon: Icons.restaurant,
                      label: "FEEDS:",
                      value: "4 - 6",
                    ),
                  ],
                )
              : Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 60,
                  runSpacing: 12,
                  children: const [
                    DetailColumn(
                      icon: Icons.kitchen_outlined,
                      label: "PREP:",
                      value: "25 mins",
                    ),
                    DetailColumn(
                      icon: Icons.access_time,
                      label: "COOK:",
                      value: "1 hr",
                    ),
                    DetailColumn(
                      icon: Icons.restaurant,
                      label: "FEEDS:",
                      value: "4 - 6",
                    ),
                  ],
                );
        },
      ),
    );
  }
}

class DetailColumn extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const DetailColumn({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    // Use FittedBox for better scaling on small screens
    return FittedBox(
      child: Column(
        children: [
          Icon(icon, color: Colors.green, size: 28),
          Text(
            label,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(value, style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
