import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final String label;

  const MyTab({super.key, required this.iconPath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 85,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8), // Padding pequeño
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(iconPath, height: 40, width: 40),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
