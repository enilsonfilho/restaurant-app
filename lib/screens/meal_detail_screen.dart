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
      body: Center(
        child: Text(
         'Detalhes da Refeição',
        ),
      ),
    );
  }
}