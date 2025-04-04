import 'package:flutter/material.dart';
import 'package:shopping_app/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(colorScheme: ColorScheme.dark()),
      home: HomePage(),
  
      theme: ThemeData(fontFamily: 'Lato'),

      debugShowCheckedModeBanner: false,
    );
  }
}
