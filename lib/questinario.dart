import 'package:flutter/material.dart';
import './Questao.dart';
import './Resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() responder;

  Questionario({
    @required this.perguntas,
    @required this.perguntaSelecionada, 
    @required this.responder});

  bool get isThereQuestion {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = perguntas[this.perguntaSelecionada]['respostas'];

    return Column(
      children: <Widget>[
        Questao(this.perguntas[this.perguntaSelecionada]['texto']),
        ...respostas.map((t) => Resposta(t, this.responder)).toList()
      ],
    );
  }
}
