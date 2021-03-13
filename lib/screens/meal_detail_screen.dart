import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealDetailSreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Center(
        child: Text('Details of recipe'),
      ),
    );
  }
}
