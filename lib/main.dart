// Importamos los paquetes necesarios
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Importamos nuestro proveedor y pantalla inicial
import 'providers/user_provider.dart';
import 'pantallas/pantalla_inicio.dart';

void main() {
  runApp(const MiAplicacion());
}

// Clase principal de la aplicación
class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    // Registramos nuestros proveedores globales (en este caso, uno solo)
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false, // Oculta la cinta de "debug"
        title: 'Usuarios JSONPlaceholder',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true, // Activa el diseño moderno de Flutter
        ),
        home: const PantallaInicio(), // Pantalla inicial de la app
      ),
    );
  }
}
