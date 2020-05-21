import 'package:flutter/material.dart';
import './Questao.dart';
import './Resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual o seu time do coração?',
        'respostas': ['Grêmio', 'Inter']
      },
      {
        'texto': 'Qual jogador você gostaria de ter no seu time?',
        'respostas': ['Cristiano Ronaldo', 'Messi', 'Neymar', 'Mbappe']
      },
      {
        'texto': 'Qual goleiro você gostaria de ter no seu time?',
        'respostas': ['T. Courtois', 'Alisson', 'ter Stegen', 'de Gea']
      }
    ];

    List<String> respostas = perguntas[_perguntaSelecionada]['respostas']; 

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto']),
            ...respostas.map((t) => Resposta(t, _responder)).toList()
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
