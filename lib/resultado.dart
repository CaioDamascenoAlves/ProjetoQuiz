// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return "Parabéns!";
    } else if (pontuacao < 12) {
      return "Você é bom!";
    } else if (pontuacao < 16) {
      return "Impressionante!";
    } else {
      return "Mais de Oito Mil!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        FlatButton(
          onPressed: quandoReniciarQuestionario,
          child: Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 20),
          ),
          textColor: Colors.orange,
        ),
      ],
    );
  }
}
