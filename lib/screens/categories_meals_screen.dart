import 'package:flutter/material.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
      ),
      body: Center(
        child: Text('Recipes per category'),
      ),
    );
  }
}