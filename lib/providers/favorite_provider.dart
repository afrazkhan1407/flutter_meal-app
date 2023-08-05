import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);

  // bool toggleFavoriteMealStatus(Meal meal) {
  //   final mealIsFavorite = state.contains(meal);
  //   if (mealIsFavorite) {
  //     state.where((e) => e.id != meal.id).toList();
  //     return false;
  //   } else {
  //     state = [...state, meal];
  //     return true;
  //   }
  // }
  bool toggleFavoriteMealStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);
    if (mealIsFavorite) {
      state = state.where((e) => e.id != meal.id).toList(); // Update the state
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favoriteMealProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>(((ref) {
  return FavoriteMealsNotifier();
}));
