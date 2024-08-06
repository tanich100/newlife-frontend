import 'package:flutter/material.dart';
import '../widgets/camera_button.dart';
import '../widgets/category_selector.dart';
import '../widgets/favorites_button.dart';
import '../widgets/filter_dropdown.dart';
import '../widgets/new_arrivals.dart';
import '../widgets/recommended_pets.dart';
import 'donate_page.dart';
import 'notifications_page.dart';
import 'profile_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: SearchBar()),
            CameraButton(),
            FavoritesButton(),
          ],
        ),
        actions: [FilterDropdown()],
      ),
      body: Column(
        children: [
          RecommendedPets(),
          Expanded(child: NewArrivals()),
          CategorySelector(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Donate'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor:
            Color.fromARGB(255, 255, 252, 46), // Color for selected item
        unselectedItemColor:
            Color.fromARGB(255, 255, 252, 46), // Color for unselected items
        backgroundColor: Color.fromARGB(
            255, 233, 224, 45), // Background color of the BottomNavigationBar
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => MainPage()));
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DonatePage()));
              break;
            case 2:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotificationsPage()));
              break;
            case 3:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
              break;
          }
        },
      ),
    );
  }
}
