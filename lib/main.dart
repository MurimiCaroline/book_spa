//  import 'package:book_spa/screens/homepage.dart';
import 'package:book_spa/screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SPA BOOK',
      // home: HomeScreen(),   
      home: LogIn(),
    );
  }
}
