import 'package:builder_practice/ingredient.dart';

class Burger {
  final List<Ingredient> _ingredients = [];
  late double _price;

  void addIngredient(Ingredient ingredient) {
    _ingredients.add(ingredient);
  }

  String getFormattedIngredients() {
    return _ingredients.map((e) => e.getName()).join(', ');
  }

  String getFormattedAllergens() {
    final allergens = <String>{};
    for (final ingredient in _ingredients) {
      allergens.addAll(ingredient.getAllergens());
    }

    return allergens.join(', ');
  }

  String getFormattedPrice() {
    return '\$${_price.toStringAsFixed(2)}';
  }

  void setPrice(double price) {
    _price = price;
  }
}
