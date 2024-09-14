import 'package:flutter/material.dart';
import 'home_page.dart';
import 'news_page.dart';
import 'settings_page.dart';
import 'wallet_page.dart'; // Import the wallet page
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your App',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: LoginPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  // List of pages to navigate
  final List<Widget> _pages = [
    HomePage(),
    NewsPage(),
    WalletPage(), // Add the Wallet page
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A), // Set the whole page background to black
      body: _pages[_selectedIndex], // Show selected page
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(16.0), // Margin around the navigation bar to create floating effect
        decoration: BoxDecoration(
          color: Color(0xFF082f49),
          borderRadius: BorderRadius.circular(30), // Curving the edges
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30), // Clip the navigation bar
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent, // Make background transparent to show container's color
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.task_alt),
                label: 'Task',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet), // Icon for wallet
                label: 'Wallet',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Color(0xFF3b82f6),
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
            elevation: 0, // Remove default shadow
          ),
        ),
      ),
    );
  }
}
