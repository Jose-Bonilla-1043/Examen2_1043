import 'package:flutter/material.dart';

class PantallaTres extends StatefulWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  State<PantallaTres> createState() => _PantallaTresState();
}

class _PantallaTresState extends State<PantallaTres> {
  final TextEditingController _textController = TextEditingController();
  String userPost = '';

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(
            0xffff0000), // Fondo rojo del AppBar (nota: 0xffff0000 es rojo, no azul)
        title: const Center(
          child: Text(
            'Pantalla 2',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // display text
              Expanded(
                child: Center(
                  child: Text(
                    userPost,
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
              ),

              // text input
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                  hintText: 'What\'s on your mind?',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      // clear whats currently in the TextField
                      _textController.clear();
                    },
                    icon: const Icon(Icons.clear),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              MaterialButton(
                onPressed: () {
                  // update our string variable to get the new user input
                  setState(() {
                    userPost = _textController.text;
                  });
                },
                color: Colors.deepPurple[300],
                child: const Text(
                  "POST",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
