import 'package:donas/tab/burger_tab.dart';
import 'package:donas/tab/donut_tab.dart';
import 'package:donas/tab/pancake_tab.dart';
import 'package:donas/tab/pizza_tab.dart';
import 'package:donas/tab/smoothie_tab.dart';
import 'package:donas/utils/my_tab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}

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
            const SizedBox(height: 25),

            // TabBar
            TabBar(
              tabs: myTabs,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey[400],
              indicator: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade400, width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.transparent,
              indicatorPadding: EdgeInsets.zero,
              labelPadding: EdgeInsets.zero,
              splashFactory: NoSplash.splashFactory,
              overlayColor: WidgetStateProperty.all(Colors.transparent),
            ),
            // contenido de pestañas 
            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(),
                  BurgerTab(),
                  SmoothieTab(),
                  PancakeTab(),
                  PizzaTab(),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}