import '../utils/donut_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  const SmoothieTab({super.key});

  final List smoothieOnsale = const [
    // [flavor, price, color, imagePath, provider]
    ['Strawberry', '\$7', Colors.pink, 'lib/images/Strawberry.webp', 'Smoothie Bar'],
    ['Mango', '\$8', Colors.orange, 'lib/images/Mango.png', 'Smoothie Bar'],
    ['Berry Blast', '\$9', Colors.red, 'lib/images/Berry.png', 'Smoothie Bar'],
    ['Green Detox', '\$6', Colors.green, 'lib/images/Detox.png', 'Smoothie Bar'],
    ['Pineapple', '\$8', Colors.yellow, 'lib/images/Strawberry.webp', 'Smoothie Bar'],
    ['Tropical', '\$9', Colors.teal, 'lib/images/Mango.png', 'Smoothie Bar'],
    ['Acai', '\$10', Colors.purple, 'lib/images/Berry.png', 'Smoothie Bar'],
    ['Chocolate', '\$7', Colors.brown, 'lib/images/Detox.png', 'Smoothie Bar'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: smoothieOnsale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: smoothieOnsale[index][0],
          donutPrice: smoothieOnsale[index][1],
          donutColor: smoothieOnsale[index][2],
          donutImagePath: smoothieOnsale[index][3],
          donutProvider: smoothieOnsale[index][4],
        );
      },
    );
  }
}