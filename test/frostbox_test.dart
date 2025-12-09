import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:frostbox/frostbox.dart';

void main() {
  testWidgets('GlassContainer builds correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: FrostBox(child: Text('Test Glass'))),
      ),
    );
    expect(find.byType(FrostBox), findsOneWidget);

    expect(find.text('Test Glass'), findsOneWidget);
  });
}
