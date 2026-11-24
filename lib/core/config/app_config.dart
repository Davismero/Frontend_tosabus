/// Configuración de la aplicación obtenida de variables de entorno.
///
/// El valor se define al compilar con:
/// `--dart-define=API_BASE_URL=https://ejemplo.example/api/v1`.
/// No se almacenan secretos en este archivo.
class AppConfig {
  const AppConfig._();

  /// URL base de la API del backend.
  static const String apiBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'http://localhost:3000/api/v1',
  );
}
