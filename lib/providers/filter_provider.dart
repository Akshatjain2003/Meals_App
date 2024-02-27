import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/providers/meals_providers.dart';

enum Filter {
  lactosefree,
  vegetarian,
  nonVegetarian,
}

class FiltterNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltterNotifier()
      : super(
          {
            Filter.lactosefree: false,
            Filter.nonVegetarian: false,
            Filter.vegetarian: false
          },
        );


  void setFilters(Map<Filter, bool> chosenFilter){
    state = chosenFilter;
  }

  
  void setFilter(Filter filter, bool isActive) {
    state = {
      ...state,
      filter: isActive,
    };
  }
}

final filterProvider =
    StateNotifierProvider<FiltterNotifier, Map<Filter, bool>>(
  (ref) => FiltterNotifier(),
);


final filteredMealsProvider = Provider((ref) {
  final meals = ref.watch(mealsprovider);
  final activeFilters = ref.watch(filterProvider);
  return meals.where((meal) {
      if (activeFilters[Filter.lactosefree]! && !meal.isLactoseFree) {
        return false;
      }
      if (activeFilters[Filter.vegetarian]! && !meal.isVegetarian) {
        return false;
      }
      if (activeFilters[Filter.nonVegetarian]! && !meal.isNonVegetarian) {
        return false;
      }
      return true;
    }).toList();

},);