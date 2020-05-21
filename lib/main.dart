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
      'respostas': [
        {'texto': 'Grêmio', 'valor': 10},
        {'texto': 'Inter', 'valor': 10},
      ],
    },
    {
      'texto': 'Qual jogador você gostaria de ter no seu time?',
      'respostas': [
        {'texto': 'Cristiano Ronaldo', 'valor': 10},
        {'texto': 'Messi', 'valor': 10},
        {'texto': 'Neymar', 'valor': 9},
        {'texto': 'Mbappe', 'valor': 9},
        {'texto': 'Di Maria', 'valor': 8},
        {'texto': 'Arthur', 'valor': 8},
      ],
    },
    {
      'texto': 'Qual goleiro você gostaria de ter no seu time?',
      'respostas': [
        {'texto': 'T. Courtois', 'valor': 10},
        {'texto': 'Alisson', 'valor': 10},
        {'texto': 'ter Stegen', 'valor': 9},
        {'texto': 'de Gea', 'valor': 9},
        {'texto': 'Buffon', 'valor': 8},
        {'texto': 'Cassilas', 'valor': 8},
      ],
    },
    {
      'texto': 'Qual treinador você gostaria de ter no seu time?',
      'respostas': [
        {'texto': 'Guardiola', 'valor': 10},
        {'texto': 'Klopp', 'valor': 10},
        {'texto': 'Renato Gaucho', 'valor': 9},
        {'texto': 'Jorge Jesus', 'valor': 9},
      ],
    },
  ];

  void _responder() {
    if (isThereQuestion) {
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: isThereQuestion
            ? Questionario(
                perguntas: _perguntas, 
                perguntaSelecionada: _perguntaSelecionada, 
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
