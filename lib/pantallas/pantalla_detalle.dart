// Pantalla que muestra los detalles de un usuario específico
import 'package:flutter/material.dart';
import '../models/user.dart';

class PantallaDetalle extends StatelessWidget {
  final User usuario;

  const PantallaDetalle({super.key, required this.usuario});

  @override
  Widget build(BuildContext context) {
    final urlImagen = 'https://i.pravatar.cc/150?img=${usuario.id}';

    return Scaffold(
      appBar: AppBar(
        title: Text(usuario.name),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(urlImagen),
            ),
            const SizedBox(height: 20),

            // Nombre completo
            Text(usuario.name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text('@${usuario.username}', style: const TextStyle(fontSize: 16, color: Colors.grey)),

            const SizedBox(height: 20),

            // Información de contacto
            _infoItem('Correo:', usuario.email),
            _infoItem('Teléfono:', usuario.phone),
            _infoItem('Sitio web:', usuario.website),

            const SizedBox(height: 20),

            // Dirección
            _infoItem('Dirección:', '${usuario.street}, ${usuario.suite}, ${usuario.city}'),

            const SizedBox(height: 20),

            // Empresa
            _infoItem('Empresa:', usuario.company),
            _infoItem('Lema de la empresa:', '"${usuario.catchPhrase}"'),
          ],
        ),
      ),
    );
  }

  // Método auxiliar para crear secciones de información
  Widget _infoItem(String titulo, String contenido) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$titulo ',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(
              contenido,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
