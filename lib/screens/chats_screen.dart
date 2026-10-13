import 'package:flutter/material.dart';

import '../widgets/chat_tile.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ChatTile(nombre: 'Laura', mensaje: 'vamos al gym mañana?', hora: '10:30', avatar: 'https://i.pravatar.cc/100?img=1', sinLeer: 2),
        ChatTile(nombre: 'uñas', mensaje: 'ven a las 4', hora: '09:15', avatar: 'https://i.pravatar.cc/100?img=2'),
        ChatTile(nombre: 'lau', mensaje: 'Jajaja si claro', hora: 'Ayer', avatar: 'https://i.pravatar.cc/100?img=3', sinLeer: 1),
        ChatTile(nombre: 'papi', mensaje: 'oiga lerolero', hora: 'Ayer', avatar: 'https://i.pravatar.cc/100?img=4'),
        ChatTile(nombre: 'Ma', mensaje: 'Llamame cuando puedas', hora: 'Lun', avatar: 'https://i.pravatar.cc/100?img=5', sinLeer: 3),
      ],
    );
  }
}