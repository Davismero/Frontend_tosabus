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

## Estado del proyecto

- T-01 (RNF-13): estructura del repositorio, configuración base y entorno
  reproducible.
- T-02: tema visual de marca. Pendiente.
