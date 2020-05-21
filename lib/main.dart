import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resultado.dart';
import './resultado.dart';
import './questinario.dart';

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

  bool get isThereQuestion {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder() {
    if (isThereQuestion) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: isThereQuestion
            ? Questionario(
                perguntas: [], 
                perguntaSelecionada: 0,
                responder: _responder
              )
            : Resultado(),
      )
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
