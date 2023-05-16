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
        username: '',
        location: '',
        dob: '',
        bio: '',
        selectedGender: '',
      ),
    );
  }
}
