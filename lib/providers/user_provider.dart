// Importamos librerías necesarias
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/user.dart';

// Clase que maneja el estado de la lista de usuarios
class UserProvider with ChangeNotifier {
  List<User> _usuarios = []; // Lista interna de usuarios
  bool _cargando = false; // Indicador de carga (loading)

  // Getters públicos para acceder desde fuera
  List<User> get usuarios => _usuarios;
  bool get cargando => _cargando;

  // Método que obtiene la lista de usuarios desde la API
  Future<void> obtenerUsuarios() async {
    _cargando = true;
    notifyListeners(); // Notifica a los widgets que deben actualizarse

    final url = Uri.parse('https://jsonplaceholder.typicode.com/users');

    try {
      // Petición HTTP
      final respuesta = await http.get(url);

      // Si la respuesta es exitosa
      if (respuesta.statusCode == 200) {
        final List<dynamic> datos = json.decode(respuesta.body);

        // Convertimos los datos JSON en una lista de objetos User
        _usuarios = datos.map((json) => User.fromJson(json)).toList();
      } else {
        throw Exception('Error al cargar usuarios');
      }
    } catch (e) {
      print('Error: $e');
    }

    _cargando = false;
    notifyListeners(); // Se vuelve a notificar cuando ya terminó de cargar
  }
}
