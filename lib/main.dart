import 'package:examen2_1043/animated_padding.dart';
import 'package:examen2_1043/backdropfilter.dart';
import 'package:examen2_1043/cliprect.dart';
import 'package:examen2_1043/expanded.dart';
import 'package:examen2_1043/expansion_tile.dart';
import 'package:examen2_1043/iconbutton.dart';
import 'package:examen2_1043/pagina_inicial.dart';
import 'package:examen2_1043/textfield.dart';
import 'package:flutter/material.dart';
import 'package:examen2_1043/dropdown.dart';

void main() => runApp(MiRuta());

class MiRuta extends StatelessWidget {
  const MiRuta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaUno(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        // 1
        '/pantalla2': (context) => const PantallaDos(),
        //2
        '/pantalla3': (context) => const PantallaTres(),
        //
        '/pantalla4': (context) => const PantallaCuatro(),
        //
        '/pantalla5': (context) => const PantallaCinco(),
        //
        '/pantalla6': (context) => const PantallaSeis(),
        //3
        '/pantalla7': (context) => const PantallaSiete(),
        //8
        '/pantalla8': (context) => const PantallaOcho(),

        '/pantalla9': (context) => const PantallaNueve(),
      },
    );
  }
}
