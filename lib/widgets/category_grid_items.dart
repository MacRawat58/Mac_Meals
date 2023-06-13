import 'package:flutter/material.dart';

import '../models/category.dart';

class CategorygGridItem extends StatelessWidget {
  const CategorygGridItem({required this.category, super.key});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        category.color.withOpacity(0.55),
        category.color.withOpacity(0.9)
      ])),
      child: Text(
        category.title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
    );
  }
}
