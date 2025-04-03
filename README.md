# Aplicación Flutter - Usuarios desde JSONPlaceholder

Esta aplicación fue desarrollada como parte de una prueba técnica para Carvel Maquinaria. Su propósito es mostrar el consumo de una API pública utilizando Flutter, presentando los datos en una interfaz sencilla, ordenada y funcional.

---

## ¿Qué hace la aplicación?

La aplicación realiza las siguientes acciones:

- Consume la API pública [JSONPlaceholder](https://jsonplaceholder.typicode.com/users) para obtener una lista de usuarios.
- Muestra los usuarios en una lista dinámica que incluye su nombre, correo electrónico e imagen.
- Al seleccionar un usuario, se navega a una pantalla de detalle que presenta información adicional, como:
  - Nombre de usuario
  - Teléfono
  - Sitio web
  - Dirección completa
  - Empresa y lema corporativo

---

## Característica adicional implementada

Como mejora de diseño adicional, se implementó una funcionalidad de búsqueda por nombre en la pantalla principal.  
Esto permite al usuario filtrar la lista en tiempo real conforme va escribiendo, mejorando significativamente la experiencia de uso.

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
  - user.dart → Representa la estructura de un usuario obtenido de la API.

- **lib/providers/**  
  Contiene la lógica de negocio y conexión con la API:
  - user_provider.dart → Obtiene la lista de usuarios desde JSONPlaceholder.

- **lib/pantallas/**  
  Contiene las pantallas completas que ve el usuario:
  - pantalla_inicio.dart → Muestra la lista de usuarios.
  - pantalla_detalle.dart → Muestra los detalles del usuario seleccionado.

- **lib/widgets/**  
  Componentes visuales reutilizables:
  - item_usuario.dart → Widget que representa cada usuario en forma de tarjeta.

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

- Se organizó el código por carpetas (modelo, proveedor, pantallas y widgets) para mejorar el mantenimiento