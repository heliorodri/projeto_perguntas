import 'package:flutter/material.dart';
import './Questao.dart';
import './Resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
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

  void _responder() {
    if(isThereQuestion){
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get isThereQuestion {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas =
        isThereQuestion ? _perguntas[_perguntaSelecionada]['respostas'] : null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: isThereQuestion
            ? Column(
                children: [
                  Questao(_perguntas[_perguntaSelecionada]['texto']),
                  ...respostas.map((t) => Resposta(t, _responder)).toList()
                ],
              )
            : null,
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
