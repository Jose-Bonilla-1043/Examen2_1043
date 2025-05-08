import 'package:flutter/material.dart';

class PantallaSeis extends StatelessWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff0000), // Rojo
        title: const Center(
          child: Text(
            'Pantalla 6',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          ExpansionTile(
            title: const Text(
              'See more',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: const Icon(Icons.info),
            backgroundColor: Colors.black12,
            children: const [
              ListTile(title: Text('First tile')),
              ListTile(title: Text('Second tile')),
              ListTile(title: Text('Third tile')),
              ListTile(title: Text('Fourth tile')),
            ],
          ),
          // El resto del contenido iría aquí debajo
          Expanded(
            child:
                Container(), // Espacio restante (puedes poner más widgets aquí)
          ),
        ],
      ),
    );
  }
}
