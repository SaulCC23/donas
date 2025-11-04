import '../utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PancakeTab extends StatelessWidget {
  const PancakeTab({super.key});

  // Lista de pancakes (8 elementos)
  final List pancakeOnsale = const [
    ['Blueberry', '\$8', Colors.pink, 'lib/images/Chocolate.webp', 'Pancake Co.'],
    ['Chocolate', '\$9', Colors.brown, 'lib/images/Blueberry.png', 'Pancake Co.'],
    ['Banana Nut', '\$9', Colors.amber, 'lib/images/Maple.webp', 'Pancake Co.'],
    ['Maple', '\$10', Colors.green, 'lib/images/Maple.webp', 'Pancake Co.'],
    ['Red Velvet', '\$11', Colors.red, 'lib/images/Chocolate.webp', 'Pancake Co.'],
    ['Lemon', '\$9', Colors.yellow, 'lib/images/Blueberry.png', 'Pancake Co.'],
    ['Cinnamon', '\$10', Colors.orange, 'lib/images/Maple.webp', 'Pancake Co.'],
    ['Apple', '\$11', Colors.deepOrange, 'lib/images/Blueberry.png', 'Pancake Co.'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pancakeOnsale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: pancakeOnsale[index][0],
          donutPrice: pancakeOnsale[index][1],
          donutColor: pancakeOnsale[index][2],
          donutImagePath: pancakeOnsale[index][3],
          donutProvider: pancakeOnsale[index][4],
        );
      },
    );
  }
}