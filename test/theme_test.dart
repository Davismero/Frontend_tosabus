import 'package:material_ui/material_ui.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tosabus_mobile/core/theme/tosabus_colors.dart';
import 'package:tosabus_mobile/core/theme/tosabus_theme.dart';

void main() {
  group('tosabusTheme', () {
    test('usa Material 3, Inter y el esquema de colores de la marca', () {
      final ThemeData tema = tosabusTheme();

      expect(tema.useMaterial3, isTrue);
      expect(tema.textTheme.bodyLarge?.fontFamily, 'Inter');
      expect(tema.colorScheme.primary, TosabusColors.verdeTosaBus);
      expect(tema.colorScheme.onPrimary, TosabusColors.blanco);
      expect(tema.colorScheme.secondary, TosabusColors.dorado);
      expect(tema.colorScheme.onSecondary, TosabusColors.carbonVerdoso);
      expect(tema.colorScheme.surface, TosabusColors.blanco);
      expect(tema.colorScheme.error, TosabusColors.rojo);
      expect(tema.colorScheme.outline, TosabusColors.grisBorde);
      expect(tema.scaffoldBackgroundColor, TosabusColors.cremaVerdoso);
    });

    test('la barra superior es verde con texto blanco', () {
      final AppBarThemeData appBar = tosabusTheme().appBarTheme;

      expect(appBar.backgroundColor, TosabusColors.verdeTosaBus);
      expect(appBar.foregroundColor, TosabusColors.blanco);
    });

    test('los botones principales son verdes con texto blanco', () {
      final ButtonStyle? estilo = tosabusTheme().elevatedButtonTheme.style;

      expect(estilo, isNotNull);
      expect(estilo!.backgroundColor!.resolve(<WidgetState>{}),
          TosabusColors.verdeTosaBus);
      expect(estilo.foregroundColor!.resolve(<WidgetState>{}),
          TosabusColors.blanco);
    });

    test('acepta el modo oscuro', () {
      final ThemeData tema = tosabusTheme(brightness: Brightness.dark);

      expect(tema.brightness, Brightness.dark);
      expect(tema.colorScheme.primary, TosabusColors.verdeTosaBus);
    });
  });
}
