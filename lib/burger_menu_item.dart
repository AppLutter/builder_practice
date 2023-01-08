import 'package:builder_practice/burger_builder_base.dart';

class BurgerMenuItem {
  final String label;
  final BurgerBuilderBase burgerBuilder;

  BurgerMenuItem({
    required this.label,
    required this.burgerBuilder,
  });
}
