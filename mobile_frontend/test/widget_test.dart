import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_frontend/main.dart';

void main() {
  testWidgets('AudiobookStoreApp loads main navigation', (WidgetTester tester) async {
    await tester.pumpWidget(const AudiobookStoreApp());

    expect(find.text('Explore Store'), findsOneWidget); // Navigation present
    expect(find.byType(BottomNavigationBar), findsOneWidget);
  });

  testWidgets('AudiobookStoreApp tab labels visible', (WidgetTester tester) async {
    await tester.pumpWidget(const AudiobookStoreApp());

    expect(find.text('Store'), findsOneWidget);
    expect(find.text('Library'), findsOneWidget);
    expect(find.text('Player'), findsOneWidget);
  });
}
