// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual é a seu animal favorito?',
      'respostas': ['Coala', 'Lemore', 'Elefante', 'Raposa'],
    },
    {
      'texto': 'Qual seu instrutor favorito?',
      'respostas': ['Leticia', 'Lucas', 'Rafael', 'Gabriel']
    }
  ];

  void _responder() {
    if (haveQuestionSelected) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get haveQuestionSelected {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          shadowColor: Color(8),
          title: Text('Perguntas'),
        ),
        body: haveQuestionSelected
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quantoResponder: _responder,
              )
            : Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
