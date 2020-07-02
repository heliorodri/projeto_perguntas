import 'package:flutter/material.dart';
import 'package:projeto_perguntas/Questionario.dart';
import 'package:projeto_perguntas/resultado.dart';
import './resultado.dart';
import './Questionario.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontosTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual o seu time do coração?',
      'respostas': [
        {'texto': 'Grêmio', 'pontos': 10},
        {'texto': 'Inter', 'pontos': 10},
      ],
    },
    {
      'texto': 'Qual jogador você gostaria de ter no seu time?',
      'respostas': [
        {'texto': 'Cristiano Ronaldo', 'pontos': 10},
        {'texto': 'Messi', 'pontos': 10},
        {'texto': 'Neymar', 'pontos': 9},
        {'texto': 'Mbappe', 'pontos': 9},
        {'texto': 'Di Maria', 'pontos': 8},
        {'texto': 'Arthur', 'pontos': 8},
      ],
    },
    {
      'texto': 'Qual goleiro você gostaria de ter no seu time?',
      'respostas': [
        {'texto': 'T. Courtois', 'pontos': 10},
        {'texto': 'Alisson', 'pontos': 10},
        {'texto': 'ter Stegen', 'pontos': 9},
        {'texto': 'de Gea', 'pontos': 9},
        {'texto': 'Buffon', 'pontos': 8},
        {'texto': 'Cassilas', 'pontos': 8},
      ],
    },
    {
      'texto': 'Qual treinador você gostaria de ter no seu time?',
      'respostas': [
        {'texto': 'Guardiola', 'pontos': 10},
        {'texto': 'Klopp', 'pontos': 10},
        {'texto': 'Renato Gaucho', 'pontos': 9},
        {'texto': 'Jorge Jesus', 'pontos': 9},
      ],
    },
  ];

  void _responder(int pontuacao) {
    if (isThereQuestion) {
      setState(() {
        _perguntaSelecionada++;
        _pontosTotal += pontuacao;
      });
    }
  }

  void _reiniciar() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontosTotal = 0;
    });
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
              responder: _responder)
          : Resultado(_pontosTotal, _reiniciar),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
