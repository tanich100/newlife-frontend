// lib/widgets/custom_bottom_nav_bar.dart
import 'package:flutter/material.dart';
import '../screens/donate_page.dart';
import '../screens/main_page.dart';
import '../screens/notifications_page.dart';
import '../screens/profile_page.dart';

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
    switch (index) {
      case 0:
        Navigator.pushNamedAndRemoveUntil(
            context, '/main', (route) => route.isFirst);
        break;
      case 1:
        Navigator.pushNamed(context, '/donate');
        break;
      case 2:
        Navigator.pushNamed(context, '/notifications');
        break;
      case 3:
        Navigator.pushNamed(context, '/profile');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: const Color.fromARGB(255, 236, 217, 79),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.attach_money),
          label: 'Donate',
          backgroundColor: const Color.fromARGB(255, 236, 217, 79),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
          backgroundColor: const Color.fromARGB(255, 236, 217, 79),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
          backgroundColor: const Color.fromARGB(255, 236, 217, 79),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      backgroundColor: const Color.fromARGB(255, 236, 217, 79),
      onTap: _onItemTapped,
    );
  }
}
