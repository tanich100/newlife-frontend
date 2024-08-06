// lib/screens/main_page.dart
import 'package:flutter/material.dart';
import '../widgets/camera_button.dart';
import '../widgets/category_selector.dart';
import '../widgets/favorites_button.dart';
import '../widgets/filter_dropdown.dart';
import '../widgets/new_arrivals.dart';
import '../widgets/recommended_pets.dart';
import '../widgets/custom_bottom_nav_bar.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 236, 217, 79),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SearchBar(),
            ),
            CameraButton(),
            FavoritesButton(),
          ],
        ),
        actions: [FilterDropdown()],
      ),
      body: Column(
        children: [
          RecommendedPets(),
          NewArrivals(),
          CategorySelector(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
