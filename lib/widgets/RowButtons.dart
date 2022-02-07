import 'package:calculator/widgets/button.dart';
import 'package:flutter/material.dart';

class RowButtons extends StatelessWidget {
  const RowButtons(this.buttons, this.method, {Key? key}) : super(key: key);

  final List<String> buttons;
  final Function(String) method;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: buttons
              .map<Widget>((button) => Expanded(
                    child: Button(button, method),
                  ))
              .toList()),
    );
  }
}
