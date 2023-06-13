import 'package:flutter/material.dart';
import 'package:mac_meals/data/dummy_data.dart';
import 'package:mac_meals/widgets/category_grid_items.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pick your category"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          //availableCategories.map((category)=> CategorygGridItem(category: category))
          for (final category in availableCategories)
            CategorygGridItem(category: category)
        ],
      ),
    );
  }
}
