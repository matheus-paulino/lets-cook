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
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              meal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'Ingredients',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Container(
            width: 300,
            height: 200,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: ListView.builder(
              itemCount: meal.ingredients.length,
              itemBuilder: (ctx, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 10,
                    ),
                    child: Text(
                      meal.ingredients[index],
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  color: Theme.of(context).accentColor,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
