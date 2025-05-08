import 'package:flutter/material.dart';

class PantallaSiete extends StatefulWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  @override
  _PantallaSieteState createState() => _PantallaSieteState();
}

class _PantallaSieteState extends State<PantallaSiete> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(
            0xffff0000), // Fondo rojo del AppBar (nota: 0xffff0000 es rojo, no azul)
        title: const Center(
          child: Text(
            'Pantalla 7',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          AnimatedPadding(
            padding: EdgeInsets.all(padValue),
            duration: const Duration(seconds: 1),
            curve: Curves.bounceOut,
            child: Image.asset('assets/images/img3.jpg'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    padValue = 50;
                  });
                },
                icon: const Icon(
                  Icons.zoom_out,
                  color: Colors.blue,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    padValue = 0;
                  });
                },
                icon: const Icon(
                  Icons.zoom_in,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Text(
              '''Cow, in common parlance, a domestic bovine, regardless of  sex and age, usually of the species Bos taurus. In precise usage, the name is given to mature females of several large mammals, including cattle (bovines), moose, elephants, sea lions, and whales.
                ''',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
