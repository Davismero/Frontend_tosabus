import 'package:material_ui/material_ui.dart';

import 'tosabus_colors.dart';

/// Radio de esquinas usado en tarjetas y botones (8–12 px, ver AGENTS.md).
const double _radio = 12.0;

/// Espaciado base, múltiplo de 8 (ver AGENTS.md).
const double _espaciado = 8.0;

/// Construye el [ThemeData] de TosaBus (T-02, RNF-07).
///
/// Todos los colores provienen de [TosabusColors]; no hay literales de color
/// fuera del archivo de tokens. La tipografía es Inter con respaldo del sistema.
ThemeData tosabusTheme({Brightness brightness = Brightness.light}) {
  final ColorScheme esquema = ColorScheme.fromSeed(
    seedColor: TosabusColors.verdeTosaBus,
    brightness: brightness,
  ).copyWith(
    primary: TosabusColors.verdeTosaBus,
    onPrimary: TosabusColors.blanco,
    primaryContainer: TosabusColors.verdeBosque,
    onPrimaryContainer: TosabusColors.blanco,
    secondary: TosabusColors.dorado,
    onSecondary: TosabusColors.carbonVerdoso,
    secondaryContainer: TosabusColors.cremaVerdoso,
    onSecondaryContainer: TosabusColors.carbonVerdoso,
    tertiary: TosabusColors.azulCielo,
    onTertiary: TosabusColors.blanco,
    surface: TosabusColors.blanco,
    onSurface: TosabusColors.carbonVerdoso,
    surfaceTint: TosabusColors.blanco,
    error: TosabusColors.rojo,
    onError: TosabusColors.blanco,
    outline: TosabusColors.grisBorde,
  );

  final BorderSide borde = BorderSide(color: TosabusColors.grisBorde);
  final OutlineInputBorder bordeEntrada = OutlineInputBorder(
    borderRadius: BorderRadius.circular(_radio),
    borderSide: borde,
  );
  final OutlineInputBorder bordeEnfocado = bordeEntrada.copyWith(
    borderSide: borde.copyWith(width: 2.0),
  );

  return ThemeData(
    useMaterial3: true,
    brightness: brightness,
    colorScheme: esquema,
    fontFamily: 'Inter',
    fontFamilyFallback: const <String>['System UI', 'sans-serif'],
    scaffoldBackgroundColor: TosabusColors.cremaVerdoso,
    canvasColor: TosabusColors.cremaVerdoso,
    dividerColor: TosabusColors.grisBorde,
    appBarTheme: AppBarThemeData(
      backgroundColor: TosabusColors.verdeTosaBus,
      foregroundColor: TosabusColors.blanco,
      titleTextStyle: const TextStyle(
        fontFamily: 'Inter',
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: TosabusColors.blanco,
      ),
      iconTheme: const IconThemeData(color: TosabusColors.blanco),
      elevation: 0,
      centerTitle: false,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: TosabusColors.verdeTosaBus,
        foregroundColor: TosabusColors.blanco,
        disabledBackgroundColor: TosabusColors.grisBorde,
        disabledForegroundColor: TosabusColors.grisMusgo,
        padding: EdgeInsets.symmetric(
          horizontal: _espaciado * 3,
          vertical: _espaciado * 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(_radio),
        ),
        textStyle: const TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: TosabusColors.verdeBosque,
        textStyle: const TextStyle(fontFamily: 'Inter'),
      ),
    ),
    cardTheme: CardThemeData(
      color: TosabusColors.blanco,
      surfaceTintColor: TosabusColors.blanco,
      elevation: 1,
      margin: EdgeInsets.all(_espaciado * 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_radio),
        side: borde,
      ),
    ),
    inputDecorationTheme: InputDecorationThemeData(
      filled: true,
      fillColor: TosabusColors.blanco,
      hintStyle: const TextStyle(color: TosabusColors.grisMusgo),
      labelStyle: const TextStyle(color: TosabusColors.grisMusgo),
      border: bordeEntrada,
      enabledBorder: bordeEntrada,
      focusedBorder: bordeEnfocado,
      errorBorder: bordeEntrada.copyWith(
        borderSide: borde.copyWith(color: TosabusColors.rojo),
      ),
      focusedErrorBorder: bordeEntrada.copyWith(
        borderSide: borde.copyWith(color: TosabusColors.rojo, width: 2.0),
      ),
      contentPadding: EdgeInsets.all(_espaciado * 2),
    ),
    // Por defecto el SnackBar es de éxito. Para error, anula el fondo con
    // TosabusColors.rojo y acompaña el mensaje con un icono y texto.
    snackBarTheme: SnackBarThemeData(
      backgroundColor: TosabusColors.verdeExito,
      contentTextStyle: const TextStyle(
        fontFamily: 'Inter',
        color: TosabusColors.blanco,
      ),
      actionTextColor: TosabusColors.dorado,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_radio),
      ),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: TosabusColors.blanco,
      selectedColor: TosabusColors.verdeExito,
      checkmarkColor: TosabusColors.blanco,
      side: borde,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_radio),
      ),
      labelStyle: const TextStyle(
        fontFamily: 'Inter',
        color: TosabusColors.carbonVerdoso,
      ),
    ),
    iconTheme: const IconThemeData(color: TosabusColors.verdeTosaBus),
    primaryIconTheme: const IconThemeData(color: TosabusColors.verdeTosaBus),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontFamily: 'Inter',
        color: TosabusColors.carbonVerdoso,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Inter',
        color: TosabusColors.carbonVerdoso,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Inter',
        color: TosabusColors.grisMusgo,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Inter',
        color: TosabusColors.carbonVerdoso,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Inter',
        color: TosabusColors.carbonVerdoso,
      ),
    ),
  );
}
