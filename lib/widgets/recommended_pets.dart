import 'package:flutter/material.dart';
import '../models/pet.dart';
import '../screens/detail_page.dart';
import '../data/pets_data.dart';

class RecommendedPets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final recommendedPets =
        pets.where((pet) => pet.tag == 'Recommend').toList();

    final screenWidth = MediaQuery.of(context).size.width;
    final containerPadding = screenWidth * 0.05; // 5% ของความกว้างหน้าจอ
    final cardWidth = screenWidth * 0.32; // 35% ของความกว้างหน้าจอ
    final separatorWidth = screenWidth * 0.01;

    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: containerPadding),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: recommendedPets.length,
        separatorBuilder: (context, index) => SizedBox(width: separatorWidth),
        itemBuilder: (context, index) {
          final pet = recommendedPets[index];
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
              width: cardWidth,
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    Image.network(
                      pet.imageUrl,
                      height: 120,
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
