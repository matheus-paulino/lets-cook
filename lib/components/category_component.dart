import 'package:flutter/material.dart';

import '../models/category.dart';

class CategoryComponent extends StatelessWidget {
  final Category category;

  const CategoryComponent(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(category.title),
    );
  }
}
