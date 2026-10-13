import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final String usuario;
  final String avatar;
  final String imagen;
  final String descripcion;

  const PostCard({
    super.key,
    required this.usuario,
    required this.avatar,
    required this.imagen,
    required this.descripcion,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool meGusta = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                CircleAvatar(backgroundImage: NetworkImage(widget.avatar)),
                const SizedBox(width: 10),
                Text(widget.usuario, style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Image.network(
          widget.imagen,
          width: double.infinity,
          fit: BoxFit.fitWidth,
   ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(widget.descripcion),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(
                  meGusta ? Icons.favorite : Icons.favorite_border,
                  color: meGusta ? Colors.red : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    meGusta = !meGusta;
                  });
                },
              ),
              IconButton(
                icon: const Icon(Icons.comment_outlined),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}