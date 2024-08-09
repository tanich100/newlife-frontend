import 'package:flutter/material.dart';
import '../models/pet.dart';
import '../screens/detail_page.dart';
import '../data/pets_data.dart';

class NewArrivals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final newPets = pets.where((pet) => pet.tag == 'New Arrival').toList();

    // ใช้ MediaQuery เพื่อคำนวณขนาดที่เหมาะสม
    final screenWidth = MediaQuery.of(context).size.width;
    final containerPadding = screenWidth * 0.05; // 5% ของความกว้างหน้าจอ
    final cardWidth = screenWidth * 0.32; // 35% ของความกว้างหน้าจอ
    final separatorWidth = screenWidth * 0.01;
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: containerPadding),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: newPets.length,
        separatorBuilder: (context, index) => SizedBox(width: separatorWidth),
        itemBuilder: (context, index) {
          final pet = newPets[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(pet: pet),
                ),
              );
            },
            child: SizedBox(
              width: cardWidth, // ปรับขนาดของการ์ด
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 8.0), // ลด Margin
                child: Column(
                  children: [
                    Image.network(
                      pet.imageUrl,
                      height: 120, // ปรับขนาดของภาพให้เล็กลง
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        pet.name,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
