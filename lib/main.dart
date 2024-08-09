// lib/main.dart
import 'package:flutter/material.dart';
import 'screens/main_page.dart';
import 'screens/donate_page.dart';
import 'screens/notifications_page.dart';
import 'screens/profile_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Adoption App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/main',
      routes: {
        '/main': (context) => MainPage(),
        '/donate': (context) => DonatePage(),
        '/notifications': (context) => NotificationsPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
