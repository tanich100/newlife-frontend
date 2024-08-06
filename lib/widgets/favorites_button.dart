import 'package:flutter/material.dart';

import '../screens/favorites_page.dart';

class FavoritesButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.favorite),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => FavoritesPage()));
      },
    );
  }
}
