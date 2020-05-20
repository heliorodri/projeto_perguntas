import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

@override
class PerguntaApp extends StatelessWidget {
  final perguntas = [
    'Qual o seu time do coração?',
    'Qual jogador fez você gostar de futebol?'
  ];
  
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            RaisedButton(
              child: Text('Grêmio'),
              onPressed: null,  
            ),
            RaisedButton(
              child: Text('Inter'),
              onPressed: null,  
            )
          ],
        ),
      ),
    );
  }
}