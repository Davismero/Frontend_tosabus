import 'package:flutter_test/flutter_test.dart';

import 'package:tosabus_mobile/app/app.dart';
import 'package:tosabus_mobile/core/theme/tosabus_colors.dart';
import 'package:tosabus_mobile/core/theme/tosabus_theme.dart';

void main() {
  testWidgets('la aplicación muestra el nombre TosaBus', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const TosabusApp());

    expect(find.text('TosaBus'), findsOneWidget);
    expect(find.text('TosaBus — versión de desarrollo'), findsOneWidget);
  });

  test('el tema usa el verde de TosaBus como color primario', () {
    expect(
      tosabusTheme().colorScheme.primary,
      TosabusColors.verdeTosaBus,
    );
  });
}
