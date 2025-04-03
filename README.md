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

- **Flutter**: Framework principal para la construcción de interfaces nativas.
- **Material Design**: Estándar de diseño visual utilizado en la interfaz.
- **Provider**: Manejador de estado utilizado para controlar el flujo de datos y la respuesta de la interfaz.
- **HTTP**: Paquete para realizar peticiones a servicios externos.
- **Arquitectura por capas**: Separación de responsabilidades entre modelo, proveedor, lógica de presentación y componentes visuales.

---

## Estructura del proyecto

- **lib/main.dart**  
  Punto de entrada de la aplicación. Define el tema general, el manejador de estado y la pantalla inicial.

- **lib/models/**  
  Contiene los modelos de datos:  
  `user.dart`: Representa la estructura de un usuario proveniente de la API.

- **lib/providers/**  
  Contiene la lógica de negocio:  
  `user_provider.dart`: Encargado de obtener los usuarios y exponerlos a la interfaz mediante Provider.

- **lib/pantallas/**  
  Agrupa las pantallas completas visibles por el usuario:  
  `pantalla_inicio.dart`: Lista principal de usuarios, incluye el campo de búsqueda.  
  `pantalla_detalle.dart`: Detalle completo de un usuario específico.

- **lib/widgets/**  
  Componentes visuales reutilizables:  
  `item_usuario.dart`: Tarjeta visual que representa un usuario individual dentro de la lista.

---

## Cómo ejecutar la aplicación

1. Asegúrate de tener Flutter instalado.
2. Clona este repositorio o descarga el código.
3. Abre el proyecto en Android Studio o VS Code.
4. Ejecuta el siguiente comando para obtener las dependencias:

flutter pub get
flutter run

---

## API utilizada
La fuente de datos es pública y gratuita:
- Endpoint: https://jsonplaceholder.typicode.com/users

Para las imágenes de los usuarios, se utilizó el servicio de imágenes generado dinámicamente en https://i.pravatar.cc, utilizando el ID del usuario.

---

## Decisiones técnicas
- Se eligió Provider por su facilidad de implementación, documentación y compatibilidad con arquitecturas limpias.
- Se simuló la imagen de los usuarios usando https://i.pravatar.cc, generando un avatar único por ID.
- Se mantuvo una estructura clara y modular, facilitando la escalabilidad del código.
- Se añadió un campo de búsqueda para filtrar usuarios por nombre, a fin de mejorar la experiencia del usuario.
- Se organizó el código por carpetas (modelo, proveedor, pantallas y widgets) para mejorar el mantenimiento