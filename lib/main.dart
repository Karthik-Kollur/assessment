import 'package:assesment/pages/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(
          username: 'John Doe',
          location: 'India',
          dob: '30 years',
          bio:
              "'SpaceX is welcoming a key new hire. Kathy Lueders, who led NASA's human spaceflight program before retiring in April, is joining Elon Musk's firm as general manager and will work'",
          selectedGender: 'Male'),
    );
  }
}
