import 'package:flutter_test/flutter_test.dart';
import 'package:fe_menko/main.dart';

void main() {
  testWidgets('MENKO app displays correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MenkoApp());

    expect(find.text('MENKO Noodle House'), findsOneWidget);
  });
}