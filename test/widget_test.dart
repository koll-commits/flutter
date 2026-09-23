import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:poliwangi_academic_dashboard/modul1/profile_screen.dart';
import 'package:poliwangi_academic_dashboard/modul3/screens/main.dart';

void main() {
  testWidgets('Dashboard loads and shows courses', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text('Dashboard Akademik TRPL'), findsOneWidget);
    expect(find.byIcon(Icons.dark_mode_rounded), findsOneWidget);

    await tester.tap(find.byIcon(Icons.dark_mode_rounded));
    await tester.pump();
    expect(find.byIcon(Icons.light_mode_rounded), findsOneWidget);
  });
}