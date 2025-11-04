// This is a basic flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:donas/main.dart';

void main() {
  testWidgets('App builds and shows header', (WidgetTester tester) async {
    // Arranca la app completa
    await tester.pumpWidget(const MyApp());

    // Esperamos que el texto principal exista
    expect(find.text('I want to '), findsOneWidget);
    expect(find.text('Eat'), findsOneWidget);
  });
}