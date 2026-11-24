import 'package:flutter_test/flutter_test.dart';

import 'package:tosabus_mobile/app/app.dart';

void main() {
  testWidgets('la aplicación muestra el nombre TosaBus', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const TosabusApp());

    expect(find.text('TosaBus'), findsOneWidget);
    expect(find.text('TosaBus — versión de desarrollo'), findsOneWidget);
  });
}
