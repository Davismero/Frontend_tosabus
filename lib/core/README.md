# Núcleo (`lib/core`)

Código compartido que no pertenece a una funcionalidad concreta. No contiene
widgets de pantallas ni reglas de negocio.

## Convención de capas

- `config/`: configuración de la aplicación leída de variables de entorno
  (`AppConfig`). Nunca incluir secretos ni valores de producción.
- `theme/` (T-02): tokens visuales y `ThemeData` de la marca TosaBus.
- `network/` (T-03 en adelante): cliente HTTP, interceptores y manejo de errores.
- `router/` (T-03 en adelante): definición de rutas y navegación.
- `session/` (T-03 en adelante): sesión, token JWT y roles.

Las dependencias apuntan hacia el núcleo: las funcionalidades (`lib/features`)
pueden usar `core`, pero `core` no debe importar `features`.

Los textos de la interfaz van en español y los términos del dominio son
Compañía, Ruta, Parada, Bus, Viaje, Reserva, Boleto, Pago y Ubicación.
