import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String nombre;
  final String mensaje;
  final String hora;
  final String avatar;
  final int sinLeer;

  const ChatTile({
    super.key,
    required this.nombre,
    required this.mensaje,
    required this.hora,
    required this.avatar,
    this.sinLeer = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(radius: 25, backgroundImage: NetworkImage(avatar)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(nombre, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(mensaje, maxLines: 1, overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
          Column(
            children: [
              Text(hora, style: const TextStyle(fontSize: 12)),
              if (sinLeer > 0)
                Container(
                  margin: const EdgeInsets.only(top: 6),
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Colors.teal,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '$sinLeer',
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}