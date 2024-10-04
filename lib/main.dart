import 'package:flutter/material.dart';
import 'screens/listscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Air Conditioner Product App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.grey.shade100,
      ),
      home: ProductListScreen(), // Removed 'const' here
    );
  }
}
