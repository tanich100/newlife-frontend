import 'package:flutter/material.dart';
import '../models/pet.dart';
import '../screens/detail_page.dart';
import '../data/pets_data.dart'; // Ensure correct import

class NewArrivals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: pets.map((pet) {
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
                width: 200, // Adjust width to make the card smaller
                height: 220, // Adjust height to make the card smaller
                child: Card(
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Center the content vertically
                    mainAxisSize: MainAxisSize
                        .min, // Make the Column as small as possible
                    children: [
                      Container(
                        height: 120, // Adjust height to fit the card
                        width: double.infinity,
                        child: Image.network(
                          pet.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          pet.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 16, 16,
                                16), // Adjust text color for better contrast
                          ),
                          textAlign: TextAlign.center, // Center align the text
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
