import 'package:material_ui/material_ui.dart';

import '../core/theme/tosabus_theme.dart';

/// Raíz de la aplicación TosaBus.
///
/// El tema de marca se define en T-02 (RNF-07): colores y tipografía
/// centralizados en [tosabusTheme]. Las pantallas de negocio llegan en T-09.
class TosabusApp extends StatelessWidget {
  const TosabusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TosaBus',
      debugShowCheckedModeBanner: false,
      theme: tosabusTheme(),
      home: const _DevHomePage(),
    );
  }
}

/// Pantalla de ejemplo que demuestra los tokens del tema (sin lógica de negocio).
class _DevHomePage extends StatelessWidget {
  const _DevHomePage();

  @override
  Widget build(BuildContext context) {
    final ThemeData tema = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('TosaBus')),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'TosaBus — versión de desarrollo',
                  style: tema.textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Botón principal'),
                ),
                const SizedBox(height: 16),
                ChoiceChip(
                  selected: true,
                  avatar: Icon(
                    Icons.check_circle,
                    color: tema.colorScheme.onPrimary,
                  ),
                  label: Text(
                    'Éxito: boleto válido',
                    style: TextStyle(color: tema.colorScheme.onPrimary),
                  ),
                  onSelected: (_) {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
