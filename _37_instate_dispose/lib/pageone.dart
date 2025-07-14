import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  void initState() {
    super.initState();
    // This method is called when this State object is inserted into the tree.
    print("PageOne initState() called");
  }

  @override
  void dispose() {
    // This method is called when this State object is removed from the tree permanently.
    print("PageOne dispose() called");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Page One")),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [Text("Page One")]),
        ),
      );
  }
}
