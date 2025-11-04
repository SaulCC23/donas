import '../utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  const PizzaTab({super.key});

  // Lista de pizzas (8 elementos)
  final List pizzaOnsale = const [
    ['Margherita', '\$12', Colors.red, 'lib/images/pizza_normal.jpg', 'Pizzería'],
    ['Pepperoni', '\$14', Colors.deepOrange, 'lib/images/pizza_pepperoni.jpg', 'Pizzería'],
    ['Hawaiian', '\$13', Colors.orange, 'lib/images/pizza_hawaiian.jpg', 'Pizzería'],
    ['Veggie', '\$11', Colors.green, 'lib/images/pizza_veggie.png', 'Pizzería'],
    ['Four Cheese', '\$15', Colors.amber, 'lib/images/pizza_normal.jpg', 'Pizzería'],
    ['BBQ Chicken', '\$16', Colors.brown, 'lib/images/pizza_pepperoni.jpg', 'Pizzería'],
    ['Mushroom', '\$13', Colors.teal, 'lib/images/pizza_hawaiian.jpg', 'Pizzería'],
    ['Spicy Italian', '\$17', Colors.purple, 'lib/images/pizza_veggie.png', 'Pizzería'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pizzaOnsale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: pizzaOnsale[index][0],
          donutPrice: pizzaOnsale[index][1],
          donutColor: pizzaOnsale[index][2],
          donutImagePath: pizzaOnsale[index][3],
          donutProvider: pizzaOnsale[index][4],
        );
      },
    );
  }
}