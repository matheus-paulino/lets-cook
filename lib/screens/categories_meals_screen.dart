import 'package:flutter/material.dart';

import '../components/meal_component.dart';
import '../models/category.dart';
import '../data/dummy_data.dart';
import '../models/meal.dart';

class CategoriesMealsScreen extends StatelessWidget {
  final List<Meal> meals;

  const CategoriesMealsScreen(
    this.meals,
  );

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;

    final categoryMeals = meals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealComponent(categoryMeals[index]);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
