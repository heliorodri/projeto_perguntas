import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

@override
class PerguntaApp extends StatelessWidget {
  
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Text('Olá Flutter!'),
      ),
    );
  }
}