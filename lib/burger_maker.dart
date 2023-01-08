import 'package:builder_practice/burger.dart';
import 'package:builder_practice/burger_builder_base.dart';

/// Director임
///

class BurgerMaker{
  BurgerBuilderBase burgerBuilder;

  BurgerMaker(this.burgerBuilder);

  void changeBurgerBuilder(BurgerBuilderBase burgerBuilder){
    this.burgerBuilder = burgerBuilder;
  }

  Burger getBurger(){
    return burgerBuilder.getBurger();
  }

  void prepareBurger(){
    burgerBuilder.createBurger();
    burgerBuilder.setBurgerPrice();


    burgerBuilder.addBuns();
    burgerBuilder.addCheese();
    burgerBuilder.addPatties();
    burgerBuilder.addSauces();
    burgerBuilder.addSeasoning();
    burgerBuilder.addVegetables();
  }

}