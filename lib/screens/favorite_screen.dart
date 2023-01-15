import 'package:app_restaurante/components/meal_item.dart';
import 'package:app_restaurante/models/meals.dart';
import 'package:flutter/material.dart';

/**
 * 
 * Enilson Filho
 */
class FavoriteScreen extends StatelessWidget {

  final List<Meal> favoriteMeals;

  const FavoriteScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {

    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('Minhas Refeições Favoritas!'),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(favoriteMeals[index]);
        },
      );
    }
  }
}