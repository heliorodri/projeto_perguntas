import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String resposta;
  final void Function() funcOnPressed;

  Resposta(this.resposta, this.funcOnPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: FlatButton(
        textColor: Colors.white,
        child: Text(this.resposta),
        onPressed: funcOnPressed,
        color: Colors.blue
      ),
    );
  }
}
