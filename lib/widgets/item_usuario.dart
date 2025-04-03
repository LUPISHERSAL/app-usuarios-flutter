// Widget personalizado que representa un usuario en la lista
import 'package:flutter/material.dart';
import '../models/user.dart';
import '../pantallas/pantalla_detalle.dart'; // La crearemos después

class ItemUsuario extends StatelessWidget {
  final User usuario;

  const ItemUsuario({super.key, required this.usuario});

  @override
  Widget build(BuildContext context) {
    // Creamos la URL del avatar usando el ID del usuario
    final urlImagen = 'https://i.pravatar.cc/150?img=${usuario.id}';

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(urlImagen),
        ),
        title: Text(usuario.name),
        subtitle: Text(usuario.email),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Al tocar el usuario, vamos a la pantalla de detalle
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PantallaDetalle(usuario: usuario),
            ),
          );
        },
      ),
    );
  }
}
