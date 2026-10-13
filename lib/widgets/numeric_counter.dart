import 'package:flutter/material.dart';

class NumericCounter extends StatefulWidget {
  const NumericCounter({super.key});

  @override
  State<NumericCounter> createState() => _NumericCounterState();
}

class _NumericCounterState extends State<NumericCounter> {
  int cantidad = 0;

  void sumar() {
    if (cantidad < 10) {
      setState(() {
        cantidad++;
      });
    }
  }

  void restar() {
    if (cantidad > 0) {
      setState(() {
        cantidad--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.teal.shade50,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color.fromARGB(255, 149, 106, 219), width: 2),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Cantidad', style: TextStyle(fontSize: 18)),
          Text(
            '$cantidad',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: cantidad == 10 ? Colors.red : Colors.teal,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(onPressed: restar, child: const Icon(Icons.remove)),
              const SizedBox(width: 16),
              ElevatedButton(onPressed: sumar, child: const Icon(Icons.add)),
            ],
          ),
        ],
      ),
    );
  }
}