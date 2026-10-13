# Muming

Muming es una aplicación móvil que desarrollé con Flutter y Dart como taller práctico individual de Desarrollo Móvil. La idea era construir una app con tres secciones, una barra de navegación inferior y componentes propios, sin bases de datos ni servicios externos: todos los datos están escritos directamente en el código.

**Autora:** Danna González
**Universidad:** Universidad San Buenaventura
**Fecha:** octubre de 2026

## De qué trata

Quise que Muming se sintiera como una app real y con identidad propia, así que le puse un nombre, una paleta de colores y un diseño que se repite en las tres pantallas. Se navega entre secciones con la barra inferior, y el título de la barra superior cambia según la sección donde estés.

## Secciones

### Home

La pantalla principal tiene un banner de color con un título, una descripción y un ícono, un carrusel horizontal de tarjetas con imágenes (post, café, viajes y mascotas) y varias publicaciones al estilo de una red social. Toda la pantalla se desplaza hacia abajo, y el carrusel se desliza hacia los lados.

Las publicaciones salen de un mismo widget llamado `PostCard`, que recibe por parámetros el usuario, el avatar, la imagen y la descripción. Así pude usar el mismo componente varias veces con información distinta. Cada publicación tiene un botón de "Me gusta" que cambia de color al pulsarlo.

### Chats

Es una lista de cinco conversaciones construida con el widget `ChatTile`. Cada una muestra el avatar del contacto, su nombre, el último mensaje, la hora y un círculo con la cantidad de mensajes sin leer (que solo aparece cuando hay alguno). La lista se puede desplazar si no cabe en la pantalla.

### Laboratorio de widgets

Aquí hay un contador interactivo con una variable de tipo `int`. Tiene un botón para sumar y otro para restar, y cada vez que se pulsa uno se llama a `setState()` para que la pantalla muestre el valor nuevo. Puse un límite entre 0 y 10 para que el número nunca sea negativo ni se pase del máximo, y el número cambia de color cuando llega al tope.

## Cómo está organizado el proyecto

```
lib/
├── main.dart
├── screens/
│   ├── home_screen.dart
│   ├── chats_screen.dart
│   └── laboratory_screen.dart
└── widgets/
    ├── post_card.dart
    ├── promotional_banner.dart
    ├── image_carousel.dart
    ├── chat_tile.dart
    └── numeric_counter.dart
```

En `main.dart` está el `Scaffold` principal con el `AppBar` y el `BottomNavigationBar`. Ahí guardo en una variable cuál sección está seleccionada; cuando el usuario toca un ícono de la barra, `setState()` actualiza esa variable y la app muestra la pantalla y el título que corresponden. Separé las pantallas y los widgets en carpetas distintas para que el código fuera más fácil de leer y de reutilizar.

## Conceptos que apliqué

- Creación y composición de widgets, tanto personalizados como los que trae Flutter.
- `Scaffold`, `AppBar`, `Container`, `Row`, `Column`, `Padding` y `SizedBox` para organizar la interfaz.
- `ListView` vertical y horizontal para el contenido desplazable.
- Parámetros en los widgets para reutilizarlos con datos distintos.
- Estilos con colores, bordes, márgenes, tamaños e imágenes.
- Variables, eventos de botones y `setState()` para actualizar la pantalla.

## Cómo ejecutarlo

Necesitas tener Flutter instalado y un emulador, un celular o Chrome para probarlo.

1. Clona este repositorio:
```bash
   git clone https://github.com/TU_USUARIO/taller-flutter.git
```
2. Entra a la carpeta del proyecto:
```bash
   cd taller-flutter
```
3. Descarga las dependencias:
```bash
   flutter pub get
```
4. Ejecuta la app:
```bash
   flutter run
```

Las imágenes se cargan desde internet, así que el dispositivo donde la pruebes tiene que tener conexión. Si algún enlace de imagen deja de funcionar, basta con cambiarlo por otro en los archivos de `lib/screens/` y `lib/widgets/image_carousel.dart`.

## Evidencias

En la carpeta `evidencias/` dejé las capturas de las tres pantallas

## Lo que aprendí
ad
Lo más importante fue entender cómo se construye una interfaz a partir de widgets pequeños que se combinan, y cómo `setState()` le avisa a Flutter que algo cambió para que redibuje la pantalla. También aprendí a reutilizar un mismo widget con parámetros en lugar de copiar y pegar código.
