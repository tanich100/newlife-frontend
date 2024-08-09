import 'package:flutter/material.dart';

class CategorySelector extends StatelessWidget {
  final Function(String) onTagSelected;
  final List<String> categories = ['All', 'Dog', 'Cat', 'Others'];

  CategorySelector({required this.onTagSelected});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories.map((category) {
          return GestureDetector(
            onTap: () => onTagSelected(category),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 4.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 236, 217, 79),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                category,
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
