import 'package:material_ui/material_ui.dart';

/// Tokens de color de la identidad visual de TosaBus (T-02).
///
/// Reglas de uso (ver AGENTS.md, sección 5):
/// - Los colores se definen una sola vez aquí; nunca se escriben a mano en widgets.
/// - Texto blanco sobre verde; texto oscuro ([carbonVerdoso]) sobre dorado.
/// - El azul cielo se reserva para iconos, mapa y elementos informativos;
///   no se usa para texto pequeño sobre blanco.
/// - El color nunca es la única señal: éxito, advertencia y error se acompañan
///   con icono y texto. El éxito usa un icono de check para distinguirse del
///   verde primario, que se parece al verde de éxito.
/// - Contraste recomendado de al menos 4.5:1.
abstract final class TosabusColors {
  /// Primario: barra superior y botones principales.
  static const Color verdeTosaBus = Color(0xFF1F7A33);

  /// Primario oscuro: énfasis y estado presionado.
  static const Color verdeBosque = Color(0xFF14532D);

  /// Acento: resaltados, botones secundarios y franja del logo.
  ///
  /// Sobre dorado se usa siempre texto oscuro ([carbonVerdoso]), nunca blanco.
  static const Color dorado = Color(0xFFF5B700);

  /// Informativo: mapa e iconos de ubicación. No usar en texto pequeño sobre blanco.
  static const Color azulCielo = Color(0xFF2E93D1);

  /// Fondo de pantallas.
  static const Color cremaVerdoso = Color(0xFFF5F9F3);

  /// Superficie de tarjetas y contenedores.
  static const Color blanco = Color(0xFFFFFFFF);

  /// Texto principal. Es el color obligatorio sobre el dorado.
  static const Color carbonVerdoso = Color(0xFF1B2A1F);

  /// Texto secundario.
  static const Color grisMusgo = Color(0xFF5A6B5E);

  /// Bordes y divisores.
  static const Color grisBorde = Color(0xFFD6E0D4);

  /// Éxito: pago aprobado y boleto válido. Acompañar con icono de check.
  static const Color verdeExito = Color(0xFF2E7D32);

  /// Advertencia: reserva por vencer. Acompañar con icono y texto.
  static const Color naranja = Color(0xFFED6C02);

  /// Error: pago rechazado y boleto inválido. Acompañar con icono y texto.
  static const Color rojo = Color(0xFFC62828);
}
