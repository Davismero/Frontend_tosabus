# Funcionalidades (`lib/features`)

Cada módulo de negocio tendrá su propia carpeta con esta estructura:

```
features/<modulo>/
├── data/         # adaptadores de salida: API, persistencia local, mapas
├── domain/       # entidades y reglas de negocio, sin dependencias de Flutter
└── presentation/ # pantallas y widgets, sin lógica de negocio
```

La lógica de negocio y el estado se mantienen fuera de los widgets. Los datos
de rutas, horarios, tarifas y asientos se consumen siempre de la API; no se
escriben valores en el código.

## Módulos previstos

| Módulo | Tareas | Responsabilidad |
|---|---|---|
| `auth` | T-03 a T-05 | Registro, inicio de sesión, JWT y roles |
| `routes` | T-06 a T-09, T-35 | Rutas, paradas, horarios y tarifas |
| `trips` | T-10 a T-14, T-22 | Flota, conductores, viajes y búsqueda |
| `bookings` | T-15 a T-21 | Reservas, boletos, QR y validación |
| `payments` | T-28 a T-33 | Pasarela en modo de pruebas y comprobantes |
| `tracking` | T-23 a T-27 | Ubicación en vivo, mapa y llegada estimada |
| `profile` | T-39, T-40 | Recuperación de contraseña y edición del perfil |

Además están previstos `notifications` (T-34 a T-36) y `reports` (T-37, T-38)
según el DERCAS. Esta tarea (T-01) solo crea la estructura: no se crean módulos
vacíos con código.
