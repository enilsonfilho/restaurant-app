import 'package:app_restaurante/screens/categories_screen.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos cozinhar?',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.amber,
        ),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          subtitle1: const TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
          )
        ),
      ),
      home: CategoriesScreen(),
    );
  }
}