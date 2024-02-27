import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/Model/meal.dart';

class FavMealNotifier extends StateNotifier<List<Meal>> {
  FavMealNotifier() : super([]);

  bool toggleMEalFavouriteStatus(Meal meal) {
    final mealIsFav = state.contains(meal);
    if (mealIsFav) {
      state = state.where((meal) => meal.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favMealProvider = StateNotifierProvider<FavMealNotifier, List<Meal>>(
  (ref) {
    return FavMealNotifier();
  },
);
