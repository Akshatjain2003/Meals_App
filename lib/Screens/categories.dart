import 'package:flutter/material.dart';
import 'package:meals_app/Data/dummy_data.dart';
import 'package:meals_app/Model/category.dart';
import 'package:meals_app/Model/meal.dart';
import 'package:meals_app/Screens/meals.dart';
import 'package:meals_app/Widgets/category_grid_item.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({
    super.key,
    required this.availableMeals,
  });
  final List<Meal> availableMeals;

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animController;
  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      lowerBound: 0,
      upperBound: 1,
    );
    _animController.forward();
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  void _selectCategory(BuildContext context, Category category) {
    final filteredMeals = widget.availableMeals
        .where(
          (meal) => meal.categories.contains(category.id),
        )
        .toList();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => MealsScreen(
          meals: filteredMeals,
          title: category.title,
        ),
      ),
    );
  }

  @override
  Widget build(context) {
    return AnimatedBuilder(
      animation: _animController,
      child: GridView(
        padding: const EdgeInsets.all(14),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        children: [
          for (final category in availableCategories)
            CategoryGridItem(
              category: category,
              onSelectCategory: () {
                _selectCategory(context, category);
              },
            )
        ],
      ),
      builder: (context, child) => SlideTransition(
        position: Tween(
          begin: const Offset(0, 0.3),
          end: const Offset(0, 0),
        ).animate(
          CurvedAnimation(parent: _animController, curve: Curves.easeInOut),
        ),
        child: child,
      ),
    );
  }
}
