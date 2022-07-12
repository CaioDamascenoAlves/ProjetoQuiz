// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual é a seu animal favorito?',
      'respostas': [
        {'texto': 'Coala', 'pontuacao': 10},
        {'texto': 'Lemore', 'pontuacao': 9},
        {'texto': 'Elefante', 'pontuacao': 6},
        {'texto': 'Raposa', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual seu instrutor favorito?',
      'respostas': [
        {'texto': 'Leticia', 'pontuacao': 10},
        {'texto': 'Caio', 'pontuacao': 9},
        {'texto': 'Rafael', 'pontuacao': 5},
        {'texto': 'Gabriel', 'pontuacao': 6},
      ]
    }
  ];

  void _responder(int pontuacao) {
    if (haveQuestionSelected) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
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
            : Resultado(_pontuacaoTotal, _reniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
