# TosaBus — aplicación móvil

Aplicación Flutter de TosaBus para pasajeros y conductores: consulta de rutas y
horarios, reserva y pago de boletos y seguimiento del bus en tiempo real.

Este repositorio contiene la **estructura base** del proyecto (T-01, RNF-13).
El tema visual de la marca (colores, tipografía y logo) se define en **T-02**;
las pantallas de negocio llegan en tareas posteriores (T-09 en adelante).

## Requisitos

- Flutter **3.50 o superior** (Dart 3.14 o superior).
- Android SDK y un dispositivo o emulador para ejecutar en Android.
  Para las tareas de estructura, análisis y pruebas no hace falta el SDK:
  basta con Flutter.
- Un editor con soporte Dart/Flutter (opcional).

Verifica la instalación con:

```bash
flutter --version
flutter doctor
```

## Instalación

```bash
cd Frontend_tosabus
flutter pub get
```

## Comandos habituales

```bash
flutter analyze   # análisis estático: debe terminar sin advertencias
flutter test      # pruebas unitarias y de widgets
flutter run       # ejecutar en dispositivo/emulador (requiere Android SDK)
```

## Configuración de la API

La URL base del backend se lee en tiempo de compilación desde `API_BASE_URL`:

```bash
flutter run --dart-define=API_BASE_URL=http://192.168.1.10:3000/api/v1
flutter build apk --dart-define=API_BASE_URL=https://ejemplo.example/api/v1
```

Si no se define, se usa `http://localhost:3000/api/v1` (valor de desarrollo).
En `lib/core/config/app_config.dart` está el único punto de lectura. No se
guardan secretos en el repositorio.

## Estructura de carpetas

```
lib/
├── main.dart                 # punto de entrada: runApp(const TosabusApp())
├── app/
│   └── app.dart              # MaterialApp y pantalla de ejemplo
├── core/                     # configuración, tema, red, sesión y navegación
│   ├── README.md
│   └── config/app_config.dart
├── features/                 # módulos de negocio (auth, routes, trips, ...)
│   └── README.md
└── shared/
    └── widgets/              # widgets reutilizables
test/
└── app_test.dart             # prueba smoke de arranque
android/                      # configuración nativa de Android
web/                          # configuración de la versión web
```

La convención de capas dentro de `core` y `features` está documentada en sus
respectivos `README.md`. Los textos de la interfaz son en español y se usan
los términos del dominio Compañía, Ruta, Parada, Bus, Viaje, Reserva, Boleto,
Pago y Ubicación. Las rutas, horarios y tarifas se obtienen siempre de la API.

## Tema visual (T-02, RNF-07)

Los colores se definen **una sola vez** en
[`lib/core/theme/tosabus_colors.dart`](lib/core/theme/tosabus_colors.dart) y se
aplican en [`lib/core/theme/tosabus_theme.dart`](lib/core/theme/tosabus_theme.dart)
mediante `tosabusTheme()`. Nunca escribas un color hexadecimal a mano en un
widget: usa los tokens.

| Uso | Token | Valor |
| --- | --- | --- |
| Primario (barra superior, botones) | `verdeTosaBus` | `#1F7A33` |
| Énfasis / presionado | `verdeBosque` | `#14532D` |
| Acento (solo detalles) | `dorado` | `#F5B700` |
| Informativo (mapa, iconos) | `azulCielo` | `#2E93D1` |
| Fondo de pantallas | `cremaVerdoso` | `#F5F9F3` |
| Superficies (tarjetas) | `blanco` | `#FFFFFF` |
| Texto principal | `carbonVerdoso` | `#1B2A1F` |
| Texto secundario | `grisMusgo` | `#5A6B5E` |
| Bordes y divisores | `grisBorde` | `#D6E0D4` |
| Éxito (con icono de check) | `verdeExito` | `#2E7D32` |
| Advertencia | `naranja` | `#ED6C02` |
| Error | `rojo` | `#C62828` |

Reglas: texto blanco sobre verde, texto oscuro sobre dorado (nunca blanco sobre
dorado), azul cielo solo para iconos/mapa/informativo, contraste mínimo de
4.5:1, radios de 8–12 px y espaciado en múltiplos de 8. El color nunca es la
única señal: éxito, advertencia y error llevan icono y texto.

La tipografía es **Inter** (400/500/700) con licencia OFL incluida en
`assets/fonts/LICENSE.txt`, declarada en `pubspec.yaml` con respaldo del sistema.

## Estado del proyecto

- T-01 (RNF-13): estructura del repositorio, configuración base y entorno
  reproducible.
- T-02 (RNF-07): tema visual de marca aplicado en `tosabusTheme()`.
