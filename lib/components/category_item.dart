import 'package:app_restaurante/models/category.dart';
import 'package:app_restaurante/utils/app_routers.dart';
import 'package:flutter/material.dart';

/**
 * 
 * Enilson Filho
 */
class CategoryItem extends StatelessWidget {

  final Category category;

  const CategoryItem(this.category);

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORIES_MEALS,
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.5),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          )
        ),
      ),
    );
  }
}