import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SorteioNumeros(),
        ),
        backgroundColor: Color.fromARGB(255, 231, 76, 65)
      ),
    );
  }
}

class SorteioNumeros extends StatefulWidget {
  @override
  _SorteioNumerosState createState() => _SorteioNumerosState();
}

class _SorteioNumerosState extends State<SorteioNumeros> {
  int numero1 = 5;
  int numero2 = 5;

  List<String> images = [
    '../assets/images/dice1.png',
    '../assets/images/dice2.png',
    '../assets/images/dice3.png',
    '../assets/images/dice4.png',
    '../assets/images/dice5.png',
    '../assets/images/dice6.png',
  ];

  void sortearNumeros() {
    setState(() {
      numero1 = Random().nextInt(images.length);
      numero2 = Random().nextInt(images.length);
    });
  }

 @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Dice", style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold)),
        SizedBox(height: 100),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(images[numero1], width: 200, height: 200),
            SizedBox(width: 32),
            Image.asset(images[numero2], width: 200, height: 200),
          ],
        ),
        SizedBox(height: 64),
        ElevatedButton(
          onPressed: sortearNumeros,
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(129, 255, 0, 0), // Defina a cor do botão
          ),
          child: Text('Sortear Números'),
        ),
      ],
    );
  }
}
