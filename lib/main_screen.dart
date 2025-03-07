import 'package:flutter/material.dart';
import 'module4_screen.dart';
import 'module6_screen.dart';

class MainScreen extends StatefulWidget {
  final List<String> buttonNames = [
    "Module-4",
    "Module-6",
  ];

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void navigateToScreen(String moduleName) {
    Widget screen = moduleName == "Module-4" ? Module4Screen() : Module6Screen();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: widget.buttonNames.map((name) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () => navigateToScreen(name),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amberAccent,
                    foregroundColor: Colors.black,
                  ),
                  child: Text(name),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
