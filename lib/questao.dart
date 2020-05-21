import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 22,
          color: Color.fromRGBO(210, 105, 30, 100)
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
