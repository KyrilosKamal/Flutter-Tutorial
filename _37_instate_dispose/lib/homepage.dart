import 'package:_37_instate_dispose/pageone.dart';
import 'package:_37_instate_dispose/pagetwo.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    // This method is called only once when the widget is inserted into the widget tree.
    print("Homepage initState() called");
  }

  @override
  void dispose() {
    // This method is called when the widget is permanently removed from the widget tree.
    print("Homepage dispose() called");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home Page")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageOne()),
                  );
                },
                color: Colors.redAccent,
                child: Text("Page One"),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageTwo()),
                  );
                },
                color: Colors.redAccent,
                child: Text("Page two"),
              ),
            ],
          ),
        ),
      );
  }
}
