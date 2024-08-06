import 'package:flutter/material.dart';

class CategorySelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: () {}, child: Text('All')),
          ElevatedButton(onPressed: () {}, child: Text('Dogs')),
          ElevatedButton(onPressed: () {}, child: Text('Cats')),
          ElevatedButton(onPressed: () {}, child: Text('Lost Pets')),
          ElevatedButton(onPressed: () {}, child: Text('Special Care')),
        ],
      ),
    );
  }
}
