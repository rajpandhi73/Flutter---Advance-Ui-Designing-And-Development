import 'package:flutter/material.dart';

class Module4Screen extends StatefulWidget {
  @override
  _Module4ScreenState createState() => _Module4ScreenState();
}

class _Module4ScreenState extends State<Module4Screen> {
  int _selectedIndex = 0;

  final List<Widget> _bottomPages = [
    HomeScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  void _onBottomNavTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Module-4"),
        backgroundColor: Colors.yellow,
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            ListTile(
              title: Text("Product List"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProductlistScreen()));
              },
            ),
            ListTile(
              title: Text("Details"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
              },
            ),
          ],
        ),
      ),
      body: _bottomPages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onBottomNavTapped,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen"), backgroundColor: Colors.yellow, foregroundColor: Colors.black),
      body: Center(child: Text("Welcome to Home Screen")),
    );
  }
}

class ProductlistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product List Screen"), backgroundColor: Colors.yellow, foregroundColor: Colors.black),
      body: Center(child: Text("Welcome to Product List Screen")),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details Screen"), backgroundColor: Colors.yellow, foregroundColor: Colors.black),
      body: Center(child: Text("Welcome to Details Screen")),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Screen"), backgroundColor: Colors.yellow, foregroundColor: Colors.black),
      body: Center(child: Text("Welcome to Profile Screen")),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings Screen"), backgroundColor: Colors.yellow, foregroundColor: Colors.black),
      body: Center(child: Text("Welcome to Settings Screen")),
    );
  }
}