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
    @required this.responder
  });

  bool get isThereQuestion {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = isThereQuestion 
        ? perguntas[perguntaSelecionada]['respostas'] 
        : null;

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto']),
        ...respostas
            .map((resp) => Resposta(resp['texto'], responder))
            .toList()
      ],
    );
  }
}
