// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;

  final void Function() onSelect;

  Resposta(this.texto, this.onSelect);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: onSelect,
        child: Text(texto),
      ),
    );
  }
}
