import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:roavapp/pages/emergency/emergency_page.dart';

 Widget mediaQueryHelper(Widget child) {
   return MediaQuery(data: MediaQueryData(), child: MaterialApp(home: child));
 }

void main() {
  testWidgets('Emergency page has calling... text', (WidgetTester tester) async {
    await tester.pumpWidget(mediaQueryHelper(EmergencyPage()));

    expect(find.text('Calling...'), findsOneWidget);
    expect(find.text('07034811040'), findsOneWidget);
  });
}
