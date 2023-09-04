import 'package:flutter/material.dart';
import 'package:meals_app/Model/meal.dart';
import 'package:meals_app/Screens/categories.dart';
import 'package:meals_app/Screens/filter.dart';
import 'package:meals_app/Screens/meals.dart';
import 'package:meals_app/Widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() {
    return _TabsScreen();
  }
}

class _TabsScreen extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  final List<Meal> _favouriteMeals = [];

  void _toggleMEalFavouriteStatus(Meal meal) {
    final isExisting = _favouriteMeals.contains(meal);

    if (isExisting) {
      setState(
        () {
          _favouriteMeals.remove(meal);
        },
      );
    } else {
      setState(
        () {
          _favouriteMeals.add(meal);
        },
      );
    }
  }

  void _selectPage(int index) {
    setState(
      () {
        _selectedPageIndex = index;
      },
    );
  }

  void _setScreen(String identifier) {
     Navigator.of(context).pop();
    if (identifier == 'Filters') {
    
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => const FilterScreen(),
        ),
      ); 
    } else {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = CategoriesScreen(
      onToggleFavourites: _toggleMEalFavouriteStatus,
    );
    var activePageTitle = 'Categories';

    if (_selectedPageIndex == 1) {
      activePage = MealsScreen(
        meals: _favouriteMeals,
        onToggleFavourites: _toggleMEalFavouriteStatus,
      );
      activePageTitle = 'Your Favourites';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      drawer: MainDrawer(
        onSelectScreen: _setScreen,
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favourites',
          ),
        ],
      ),
    );
  }
}
