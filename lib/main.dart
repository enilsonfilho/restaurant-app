import 'package:app_restaurante/screens/categories_meals_screen.dart';
import 'package:app_restaurante/screens/categories_screen.dart';
import 'package:app_restaurante/screens/meal_detail_screen.dart';
import 'package:app_restaurante/utils/app_routers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos cozinhar?',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
        ),
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              subtitle1: const TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
            )),
        ),
      routes: {
        AppRoutes.HOME: (ctx) => CategoriesScreen(), // Rota principal (home)
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDeatilScreen(),
      },
    );
  }
}
