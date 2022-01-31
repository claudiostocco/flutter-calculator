import 'package:flutter/material.dart';

import 'package:calculator/consts/consts.dart';
import 'package:calculator/widgets/RowButtons.dart';

class KeyPad extends StatelessWidget {
  KeyPad(this.method, {Key? key}) : super(key: key);

  final Function(String) method;

  final line0 = [ButtomPressed.N0, ButtomPressed.DOT, '', ButtomPressed.EQUALS];
  final line1 = [ButtomPressed.N1, ButtomPressed.N2, ButtomPressed.N3, ButtomPressed.MINUS];
  final line2 = [ButtomPressed.N4, ButtomPressed.N5, ButtomPressed.N6, ButtomPressed.PLUS];
  final line3 = [ButtomPressed.N7, ButtomPressed.N8, ButtomPressed.N9, ButtomPressed.MULT];
  final line4 = [ButtomPressed.CLEAR, ButtomPressed.DEL, ButtomPressed.PERC, ButtomPressed.DIV];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      width: 400,
      color: Colors.blueGrey[800],
      child: Column(
        children: [
          RowButtons(line4, method),
          RowButtons(line3, method),
          RowButtons(line2, method),
          RowButtons(line1, method),
          RowButtons(line0, method),
        ],
      ),
    );
  }
}
