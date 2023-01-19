import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_bottom_navigation/src/flutter_bottom_navigation.dart';

void main() {
  const List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'ABC'),
  ];

  onTap(int value) {}

  testWidgets('bottomNav', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          bottomNavigationBar: FlutterBottomNavigation(
            items: items,
            onTap: onTap,
          ),
        ),
      ),
    );

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('ABC'), findsOneWidget);
  });
}
