import 'package:flutter/material.dart';

import '../widgets/post_card.dart';
import '../widgets/promotional_banner.dart';
import '../widgets/image_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        PromotionalBanner(
          titulo: 'Bienvenida',
          descripcion: 'Mira lo nuevo de esta semana',
          color: Color.fromARGB(255, 232, 170, 219),
          icono: Icons.local_fire_department,
        ),
        Padding(
          padding: EdgeInsets.only(left: 12, bottom: 8),
          child: Text('Dangomita', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        ImageCarousel(),
        PostCard(
          usuario: 'Laura',
          avatar: 'https://i.pravatar.cc/100?img=1',
          imagen: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjQZPVxybM5V8UlrkYOmxZN6Xyef5aldis6411GPS_qBBoe_jkWHoHmdac&s=10',
          descripcion: 'lomastierno',
        ),
        PostCard(
          usuario: 'Juanita',
          avatar: 'https://i.pravatar.cc/100?img=2',
          imagen: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRASAV_Wstu4ErzCMMwOVHXL8J_Fr61BW6xcZy5_ivwFxeljHYVnE6jgC-O&s=10',
          descripcion: 'que día',
        ),
      ],
    );
  }
}