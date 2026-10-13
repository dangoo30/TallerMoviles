import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import './screens/chats_screen.dart';
import 'screens/laboratory_screen.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const Principal(),
    );
  }
}

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int _indice = 0;

  final List<String> titulos = [
    'Momimg - Home',
    'Chats',
    'Laboratorio de widgets',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 234, 93, 217),
        foregroundColor: Colors.white,
        title: Text(titulos[_indice]),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indice,
        selectedItemColor: const Color.fromARGB(255, 219, 42, 195),
        onTap: (int i) {
          setState(() {
            _indice = i;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.science), label: 'Laboratorio'),
        ],
      ),
      body: [
        HomeScreen(),
        ChatsScreen(),
        LaboratoryScreen(),
      ][_indice],
    );
  }
}