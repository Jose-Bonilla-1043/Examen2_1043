import 'package:flutter/material.dart';
import 'dart:ui'; // Required for ImageFilter

class PantallaNueve extends StatelessWidget {
  const PantallaNueve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(
            0xffff0000), // Fondo rojo del AppBar (nota: 0xffff0000 es rojo, no azul)
        title: const Center(
          child: Text(
            'Pantalla 8',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/img2.png',
              height: 300,
              width: 300,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 100,
              bottom: 150,
              left: 200,
              right: 100,
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5,
                  sigmaY: 5,
                ),
                child: Container(
                  color: Colors.black.withOpacity(0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
