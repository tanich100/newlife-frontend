import 'package:flutter/material.dart';
import '../models/pet.dart';
import '../screens/detail_page.dart';
import '../data/pets_data.dart';

class PetsDisplay extends StatelessWidget {
  final String category;

  PetsDisplay({required this.category});

  @override
  Widget build(BuildContext context) {
    print('Selected category: $category');

    final filteredPets = category == 'All'
        ? pets
        : pets.where((pet) {
            print('Checking pet: ${pet.name}, Category: ${pet.category}');
            return pet.category.toLowerCase() == category.toLowerCase();
          }).toList();

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: filteredPets.length,
      itemBuilder: (context, index) {
        final pet = filteredPets[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(pet: pet),
              ),
            );
          },
          child: Card(
            child: Column(
              children: [
                Image.network(
                  pet.imageUrl,
                  height: 150,
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
        );
      },
    );
  }
}
