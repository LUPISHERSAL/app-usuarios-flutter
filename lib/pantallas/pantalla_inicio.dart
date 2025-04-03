import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user_provider.dart';
import '../widgets/item_usuario.dart';

class PantallaInicio extends StatefulWidget {
  const PantallaInicio({super.key});

  @override
  State<PantallaInicio> createState() => _PantallaInicioState();
}

class _PantallaInicioState extends State<PantallaInicio> {
  final TextEditingController _buscadorController = TextEditingController(); // Controlador del campo de texto
  String _textoBusqueda = ''; // Texto actual escrito en el campo

  @override
  void initState() {
    super.initState();
    // Obtenemos los usuarios cuando inicia la pantalla
    Provider.of<UserProvider>(context, listen: false).obtenerUsuarios();
  }

  @override
  void dispose() {
    // Liberamos el controlador al cerrar la pantalla
    _buscadorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final proveedorUsuarios = Provider.of<UserProvider>(context);
    final listaCompleta = proveedorUsuarios.usuarios;

    // Filtramos los usuarios por el nombre que se escribió
    final usuariosFiltrados = listaCompleta.where((usuario) {
      final nombre = usuario.name.toLowerCase();
      final texto = _textoBusqueda.toLowerCase();
      return nombre.contains(texto);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Usuarios'),
        centerTitle: true,
      ),
      body: proveedorUsuarios.cargando
          ? const Center(child: CircularProgressIndicator()) // Cargando...
          : Column(
        children: [
          // Campo de texto para buscar por nombre
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: _buscadorController,
              decoration: InputDecoration(
                hintText: 'Buscar por nombre...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (valor) {
                setState(() {
                  _textoBusqueda = valor;
                });
              },
            ),
          ),

          // Lista de usuarios filtrados
          Expanded(
            child: usuariosFiltrados.isEmpty
                ? const Center(child: Text('No se encontraron usuarios.'))
                : ListView.builder(
              itemCount: usuariosFiltrados.length,
              itemBuilder: (context, index) {
                final usuario = usuariosFiltrados[index];
                return ItemUsuario(usuario: usuario);
              },
            ),
          ),
        ],
      ),
    );
  }
}
