import 'package:app_restaurante/data/dummy_data.dart';
import 'package:app_restaurante/models/meals.dart';
import 'package:app_restaurante/screens/categories_meals_screen.dart';
import 'package:app_restaurante/screens/meal_detail_screen.dart';
import 'package:app_restaurante/screens/settings_screen.dart';
import 'package:app_restaurante/screens/tabs_screen.dart';
import 'package:app_restaurante/utils/app_routers.dart';
import 'package:flutter/material.dart';

/**
 * 
 * Enilson Filho
 */
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<Meal> _availableMeals = DUMMY_MEALS;

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
        AppRoutes.HOME: (ctx) => TabsScreen(), // Rota principal (home)
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(_availableMeals),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDeatilScreen(),
        AppRoutes.SETTINGS: (ctx) => SettingsScreen(),
      },
    );
  }
}
