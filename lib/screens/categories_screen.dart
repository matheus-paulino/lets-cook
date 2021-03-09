import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../components/category_component.dart';
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lets cook'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(15.0),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: DUMMY_CATEGORIES.map((category) {
          return CategoryComponent(category);
        }).toList(),
      ),
    );
  }
}
