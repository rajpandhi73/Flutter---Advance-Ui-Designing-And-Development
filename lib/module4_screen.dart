import 'package:flutter/material.dart';

class Module4Screen extends StatefulWidget {
  @override
  _Module4ScreenState createState() => _Module4ScreenState();
}

class _Module4ScreenState extends State<Module4Screen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    ProductlistScreen(),
    DetailsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Module-4"),
        backgroundColor: Colors.yellowAccent,
        foregroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.yellowAccent),
              child: Text("Navigation Drawer", style: TextStyle(color: Colors.black, fontSize: 24)),
            ),
            ListTile(
              title: Text("Home"),
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Product List"),
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Details"),
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.yellowAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen"), backgroundColor: Colors.yellowAccent, foregroundColor: Colors.black),
      body: Center(child: Text("Welcome to Home Screen")),
    );
  }
}

class ProductlistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product List Screen"), backgroundColor: Colors.yellowAccent, foregroundColor: Colors.black),
      body: Center(child: Text("Welcome to Product List Screen")),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details Screen"), backgroundColor: Colors.yellowAccent, foregroundColor: Colors.black),
      body: Center(child: Text("Welcome to Details Screen")),
    );
  }
}