// widget_test.dart
// Basic smoke test to verify the app starts and shows the AppBar title.

import 'package:flutter_test/flutter_test.dart';
import 'package:connectify/main.dart';

void main() {
  testWidgets('App starts and shows Users title', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // The AppBar title should be visible immediately on launch.
    expect(find.text('Connectify'), findsOneWidget);
  });
}
