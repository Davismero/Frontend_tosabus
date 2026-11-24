import 'package:material_ui/material_ui.dart';

/// Raíz de la aplicación TosaBus.
///
/// El tema de marca se definirá en T-02; aquí solo se usa el tema
/// predeterminado de Material 3.
class TosabusApp extends StatelessWidget {
  const TosabusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TosaBus',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const _DevHomePage(),
    );
  }
}

/// Pantalla de ejemplo que confirma que la aplicación arranca.
class _DevHomePage extends StatelessWidget {
  const _DevHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TosaBus')),
      body: const Center(child: Text('TosaBus — versión de desarrollo')),
    );
  }
}
