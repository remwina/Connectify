// widget_test.dart
// Basic smoke test to verify the app starts and renders the header title.

import 'package:flutter_test/flutter_test.dart';
import 'package:connectify/main.dart';

void main() {
  testWidgets('App starts and shows Connectify title', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Pump one frame — enough to render the header before async API call resolves.
    await tester.pump(Duration.zero);

    expect(find.text('Connectify'), findsOneWidget);
  });
}
