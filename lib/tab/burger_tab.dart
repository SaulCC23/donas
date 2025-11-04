import '../utils/donut_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  const BurgerTab({super.key});

  // Lista de hamburguesas (sabor, precio, color, imagen, proveedor)
  final List burgerOnsale = const [
    ['Classic', '\$10', Colors.brown, 'lib/images/burguer_normal.webp', 'Burger House'],
    ['Cheese', '\$12', Colors.deepOrange, 'lib/images/burger_queso.webp', 'Burger House'],
    ['BBQ Bacon', '\$13', Colors.orange, 'lib/images/burger_BBQ.jpg', 'Burger House'],
    ['Veggie', '\$11', Colors.green, 'lib/images/veggie.webp', 'Burger House'],
    ['Double', '\$15', Colors.grey, 'lib/images/burguer_normal.webp', 'Burger House'],
    ['Mushroom Swiss', '\$14', Colors.teal, 'lib/images/burger_queso.webp', 'Burger House'],
    ['Spicy', '\$13', Colors.red, 'lib/images/burger_BBQ.jpg', 'Burger House'],
    ['Avocado', '\$14', Colors.lightGreen, 'lib/images/veggie.webp', 'Burger House'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgerOnsale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: burgerOnsale[index][0],
          donutPrice: burgerOnsale[index][1],
          donutColor: burgerOnsale[index][2],
          donutImagePath: burgerOnsale[index][3],
          donutProvider: burgerOnsale[index][4],
        );
      },
    );
  }
}