import 'package:flutter_test/flutter_test.dart';
import 'package:ellure/main.dart';

void main() {
  testWidgets('App loads', (WidgetTester tester) async {
    await tester.pumpWidget(const EllureApp());

    expect(find.text('Ellure'), findsOneWidget);
  });
}
