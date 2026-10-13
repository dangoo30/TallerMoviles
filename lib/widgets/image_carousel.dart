import 'package:flutter/material.dart';

class TarjetaCarrusel extends StatelessWidget {
  final String imagen;
  final String titulo;

  const TarjetaCarrusel({super.key, required this.imagen, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(8),
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        image: DecorationImage(image: NetworkImage(imagen), fit: BoxFit.cover),
      ),
      child: Text(
        titulo,
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        children: const [
          TarjetaCarrusel(imagen: 'https://cdn.pixabay.com/photo/2021/12/21/03/56/street-6884534_640.jpg', titulo: 'post'),
          TarjetaCarrusel(imagen: 'https://cdn.pixabay.com/photo/2019/11/11/15/32/coffee-4618705_640.jpg', titulo: 'Café'),
          TarjetaCarrusel(imagen: 'https://cdn.pixabay.com/photo/2021/11/21/21/14/mountain-6815304_640.jpg', titulo: 'Viajes'),
          TarjetaCarrusel(imagen: 'https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720_640.jpg', titulo: 'Mascotas'),
        ],
      ),
    );
  }
}