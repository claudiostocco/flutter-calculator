import 'package:calculator/widgets/Button.dart';
import 'package:flutter/material.dart';

class RouButtons extends StatelessWidget {
  const RouButtons(this.buttons, this.method, {Key? key}) : super(key: key);

  final List<String> buttons;
  final Function(String) method;

  @override
  Widget build(BuildContext context) {
    return Row(children: buttons.map<Widget>((button) => Button(button, method)).toList());
  }
}
