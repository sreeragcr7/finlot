import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_project/main.dart';

void main() {
  testWidgets('FinLot onboarding continues to the home screen', (WidgetTester tester) async {
    await tester.pumpWidget(const FinLotApp());

    await tester.pump(const Duration(milliseconds: 1600));
    expect(find.text('Create Your Pool'), findsOneWidget);

    await tester.tap(find.text('Continue'));
    await tester.pump();
    expect(find.text('Easy to Use'), findsOneWidget);

    await tester.tap(find.text('Continue'));
    await tester.pump();
    expect(find.text('Track Everything'), findsOneWidget);

    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();

    expect(find.text('Upcoming Draw'), findsOneWidget);
    expect(find.text('Vidhun'), findsOneWidget);
  });
}
