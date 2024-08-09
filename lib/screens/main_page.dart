import 'package:flutter/material.dart';
import '../widgets/camera_button.dart';
import '../widgets/favorites_button.dart';
import '../widgets/filter_dropdown.dart';
import '../widgets/pet_display.dart';
import '../widgets/recommended_pets.dart';
import '../widgets/new_arrivals.dart';
import '../widgets/category_selector.dart';
import '../widgets/custom_bottom_nav_bar.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String _selectedTag = 'All';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 236, 217, 79),
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
      body: Container(
        color: const Color.fromARGB(255, 255, 250, 207),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 7.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Recommended Pets
              Container(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'แนะนำ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 192,
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: RecommendedPets(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),

              // New Arrivals
              Container(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'สมาชิกใหม่',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 192,
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: NewArrivals(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2),

              // Category Selector
              Container(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: CategorySelector(
                  onTagSelected: (tag) {
                    setState(() {
                      _selectedTag = tag;
                    });
                  },
                ),
              ),
              SizedBox(height: 6),

              // Pets Display
              Container(
                color: Color.fromARGB(255, 242, 242, 242),
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: SizedBox(
                  height: 250,
                  child: PetsDisplay(
                    category: _selectedTag,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
