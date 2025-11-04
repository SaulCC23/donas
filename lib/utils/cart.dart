import 'package:flutter/foundation.dart';

class Cart {
  static final ValueNotifier<int> itemCount = ValueNotifier<int>(0);
  static final ValueNotifier<double> totalPrice = ValueNotifier<double>(0.0);

  static void addItemFromPriceString(String priceString) {
    final price = _parsePrice(priceString);
    itemCount.value = itemCount.value + 1;
    totalPrice.value = (totalPrice.value + price);
  }

  static double _parsePrice(String s) {
    if (s == null) return 0.0;
    final cleaned = s.replaceAll(RegExp(r'[^0-9.]'), '');
    if (cleaned.isEmpty) return 0.0;
    try {
      return double.parse(cleaned);
    } catch (e) {
      return 0.0;
    }
  }

  static void clear() {
    itemCount.value = 0;
    totalPrice.value = 0.0;
  }
}