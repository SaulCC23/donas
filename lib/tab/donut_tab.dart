import 'package:donas/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  DonutTab({super.key});

  // Lista de donuts
  final List donutOnsale = [
    // [donutFlavor, donutPrice, donutColor, donutImagePath, donutProvider]
    ['Nuts Caramel', '\$36', Colors.blue, 'lib/images/chocolate_donut.png', 'Dunkin\'s'],
    ['Red Velvet', '\$45', Colors.red, 'lib/images/strawberry_donut.png', 'Dunkin\'s'],
    ['Strawberry', '\$84', Colors.pink, 'lib/images/icecream_donut.png', 'Dunkin\'s'],
    ['Choco Tap', '\$95', Colors.orange, 'lib/images/grape_donut.png', 'Dunkin\'s'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutOnsale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutOnsale[index][0],
          donutPrice: donutOnsale[index][1],
          donutColor: donutOnsale[index][2],
          donutImagePath: donutOnsale[index][3],
          donutProvider: donutOnsale[index][4],
        );
      },
    );
  }
}