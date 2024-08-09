import 'package:flutter/material.dart';
import '../models/pet.dart';

class DetailPage extends StatelessWidget {
  final Pet pet;

  DetailPage({required this.pet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pet.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Center(
                  child: Image.network(
                    pet.imageUrl,
                    height: 350,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   SizedBox(height: 16),
                  _buildTags(),
                  SizedBox(height: 16),
        
                  Text(
                    '${pet.name} สถานะ:${pet.status} ',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '${pet.name} ',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  SizedBox(height: 16),
                  Text(
                    pet.description,
                    style: TextStyle(fontSize: 16),
                  ),
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTags() {
   return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            _buildTag(icon: Icons.pets, label: 'แมว', isSelected: true),
            SizedBox(width: 8),
            _buildTag(icon: Icons.female, label: 'เมีย'),
          ],
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red[50],
          ),
          child: Icon(Icons.favorite, color: Colors.red, size: 20),
        ),
      ],
    );
  }

  Widget _buildTag({required IconData icon, required String label, bool isSelected = false}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isSelected ? Colors.blue : Colors.white,
        border: Border.all(color: isSelected ? Colors.blue : Colors.grey[300]!),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: isSelected ? Colors.white : Colors.grey[600]),
          SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(color: isSelected ? Colors.white : Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}

