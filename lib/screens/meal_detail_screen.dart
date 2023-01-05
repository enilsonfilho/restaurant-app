import 'package:app_restaurante/models/meals.dart';
import 'package:flutter/material.dart';

class MealDeatilScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          meal.title,
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              meal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Text(
              'Ingredientes',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Container(
            width: 200,
            height: 300,
            child: ListView.builder(
              itemCount: meal.ingredients.length,
              itemBuilder: (ctx, index) {
                return Card(
                  color: Theme.of(context).colorScheme.secondary,
                  child: Text(
                    meal.ingredients[index],
                  ),
                );
              }
            ),
          )
        ],
      ),
    );
  }
}