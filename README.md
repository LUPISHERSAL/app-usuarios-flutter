# Aplicación Flutter - Usuarios desde JSONPlaceholder

Esta aplicación es parte de una prueba técnica para Carvel Maquinaria. El objetivo fue crear una aplicación simple en Flutter que consuma una API pública y muestre información en una interfaz amigable.

---

## ¿Qué hace la aplicación?

- Consulta una lista de usuarios desde la API pública [JSONPlaceholder](https://jsonplaceholder.typicode.com/users).
- Muestra los usuarios en una lista con nombre, correo e imagenr.
- Al tocar un usuario, navega a una pantalla con más detalles: teléfono, sitio web, dirección y empresa.

---

## Tecnologías y herramientas utilizadas

- **Flutter** con Material Design.
- **Provider** para el manejo de estado.
- **HTTP** para consumir la API.
- **Diseño responsivo** para adaptarse a distintos tamaños de pantalla.

---

## Estructura del proyecto
La aplicación está organizada en carpetas según la responsabilidad de cada archivo:

- **lib/main.dart**  
  Punto de entrada de la aplicación. Aquí se configura el tema, el provider y la pantalla inicial.

- **lib/models/**  
  Contiene el modelo de datos:
    - `user.dart` → Representa la estructura de un usuario obtenido de la API.

- **lib/providers/**  
  Contiene la lógica de negocio y conexión con la API:
    - `user_provider.dart` → Obtiene la lista de usuarios desde JSONPlaceholder.

- **lib/pantallas/**  
  Contiene las pantallas completas que ve el usuario:
    - `pantalla_inicio.dart` → Muestra la lista de usuarios.
    - `pantalla_detalle.dart` → Muestra los detalles del usuario seleccionado.

- **lib/widgets/**  
  Componentes visuales reutilizables:
    - `item_usuario.dart` → Widget que representa cada usuario en forma de tarjeta.
  
## Cómo ejecutar la aplicación

1. Asegúrate de tener Flutter instalado.
2. Clona este repositorio o descarga el código.
3. Abre el proyecto en Android Studio o VS Code.
4. Ejecuta el siguiente comando para obtener las dependencias:

flutter pub get
flutter run

## API utilizada
La API utilizada es pública y gratuita:
 https://jsonplaceholder.typicode.com/users

## Decisiones técnicas
- Se eligió Provider por su simplicidad para manejar estados reactivos.

- Se usó la imagen de https://i.pravatar.cc para simular avatares únicos por ID.

- Se organizó el código por carpetas (modelo, proveedor, pantallas y widgets) para mejorar el mantenimiento.