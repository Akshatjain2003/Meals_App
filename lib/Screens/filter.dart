import 'package:flutter/material.dart';
import 'package:meals_app/Screens/tabs.dart';
import 'package:meals_app/Widgets/main_drawer.dart';

enum Filter {
  lactosefree,
  vegetarian,
  nonVegetarian,
}

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key, required this.currentFilter});

  final Map<Filter, bool> currentFilter;

  @override
  State<FilterScreen> createState() {
    return _FilterScreenState();
  }
}

class _FilterScreenState extends State<FilterScreen> {
  var _lactoseFreeFilter = false;
  var _vegetarianFilter = false;
  var _nonVegetarianFilter = false;

  @override
  void initState() {
    super.initState();
    _lactoseFreeFilter = widget.currentFilter[Filter.lactosefree]!;
    _vegetarianFilter = widget.currentFilter[Filter.vegetarian]!;
    _nonVegetarianFilter = widget.currentFilter[Filter.nonVegetarian]!;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      drawer: MainDrawer(onSelectScreen: (identifier) {
        Navigator.of(context).pop();
        if (identifier == 'Meals') {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => const TabsScreen(),
            ),
          );
        }
      }),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pop({
            Filter.lactosefree: _lactoseFreeFilter,
            Filter.vegetarian: _vegetarianFilter,
            Filter.nonVegetarian: _nonVegetarianFilter,
          });
          return false;
        },
        child: Column(
          children: [
            SwitchListTile(
              value: _lactoseFreeFilter,
              onChanged: (isChecked) {
                setState(
                  () {
                    _lactoseFreeFilter = isChecked;
                  },
                );
              },
              title: Text(
                'Lactose-free',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Only include Lactose-free meals',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(
                left: 34,
                right: 22,
              ),
            ),
            SwitchListTile(
              value: _vegetarianFilter,
              onChanged: (isChecked) {
                setState(
                  () {
                    _vegetarianFilter = isChecked;
                  },
                );
              },
              title: Text(
                'Vegetarian',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Only include Vegetarian meals',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(
                left: 34,
                right: 22,
              ),
            ),
            SwitchListTile(
              value: _nonVegetarianFilter,
              onChanged: (isChecked) {
                setState(
                  () {
                    _nonVegetarianFilter = isChecked;
                  },
                );
              },
              title: Text(
                'Non-Vegetarian',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Only include Non-Vegetarian meals',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(
                left: 34,
                right: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
