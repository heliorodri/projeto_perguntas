import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() onRestartQuiz;

  Resultado(this.pontuacao, this.onRestartQuiz);

  String get fraseResultado {
    return 'O valor do seu time ficou: ' + pontuacao.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28, color: Colors.blue),
          ),
        ),
        FlatButton(
          onPressed: onRestartQuiz,
          child: Text('Recomeçar'),
          textColor: Colors.lightBlue,
        )
      ],
    );
  }
}
