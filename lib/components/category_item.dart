import 'package:app_restaurante/models/category.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {

  final Category category;

  const CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(category.title),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            category.color.withOpacity(0.5),
            category.color,
          ],
        )
      ),
    );
  }
}