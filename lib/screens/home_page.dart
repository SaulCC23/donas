import 'package:donas/tab/burger_tab.dart';
import 'package:donas/tab/donut_tab.dart';
import 'package:donas/tab/pancake_tab.dart';
import 'package:donas/tab/pizza_tab.dart';
import 'package:donas/tab/smoothie_tab.dart';
import 'package:donas/utils/my_tab.dart';
import 'package:donas/utils/cart.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> myTabs = const [
    MyTab(iconPath: 'lib/icons/donut.png', label: 'Donuts'),
    MyTab(iconPath: 'lib/icons/burger.png', label: 'Burger'),
    MyTab(iconPath: 'lib/icons/smoothie.png', label: 'Smoothie'),
    MyTab(iconPath: 'lib/icons/pancakes.png', label: 'Pancake'),
    MyTab(iconPath: 'lib/icons/pizza.png', label: 'Pizza'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(Icons.menu, color: Colors.grey[800]),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person, color: Colors.grey[800]),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Texto principal
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Text(
                    'I want to ',
                    style: TextStyle(fontSize: 26, color: Colors.black),
                  ),
                  Text(
                    'Eat',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            // TabBar
            TabBar(
              tabs: myTabs,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicator: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade400, width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.zero,
              labelPadding: EdgeInsets.zero,
              splashFactory: NoSplash.splashFactory,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
            ),
            const SizedBox(height: 8),
            // contenido de pestañas 
            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(),
                  const BurgerTab(),
                  const SmoothieTab(),
                  const PancakeTab(),
                  const PizzaTab(),
                ],
              ),
            ),
          ],
        ),

        // moved cart to bottomNavigationBar so it is always visible
        bottomNavigationBar: SafeArea(
          child: ValueListenableBuilder<int>(
            valueListenable: Cart.itemCount,
            builder: (context, itemCountValue, _) {
              return ValueListenableBuilder<double>(
                valueListenable: Cart.totalPrice,
                builder: (context, totalValue, __) {
                  final totalText = (totalValue % 1 == 0)
                      ? '\$${totalValue.toInt()}'
                      : '\$${totalValue.toStringAsFixed(2)}';
                  return Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '$itemCountValue Items | $totalText',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              'Delivery Charges Included',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 12,
                            ),
                          ),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Viewing cart (demo)')),
                            );
                          },
                          child: const Text(
                            'View cart',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}



