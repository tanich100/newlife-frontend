// lib/widgets/custom_bottom_nav_bar.dart
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Color.fromARGB(255, 213, 197, 50),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.money),
          label: 'Donate',
          backgroundColor: Color.fromARGB(255, 213, 197, 50),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
          backgroundColor: Color.fromARGB(255, 213, 197, 50),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
          backgroundColor: Color.fromARGB(255, 213, 197, 50),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white, // Color for selected item
      unselectedItemColor: Colors.white, // Color for unselected items
      backgroundColor:
          Colors.yellow, // Background color of the BottomNavigationBar
      onTap: _onItemTapped,
    );
  }
}
