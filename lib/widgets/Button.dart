import 'package:calculator/consts/consts.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button(this.button, this.method, {Key? key}) : super(key: key);

  final String button;
  final Function(String) method;

  //any((element) => element.contains(button));

  @override
  Widget build(BuildContext context) {
    var funcButtons = ButtomPressed.FUNC_BUTTONS.contains(button);

    return button == ''
        ? const SizedBox(
            width: 100,
          )
        : ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey.shade900),
              fixedSize: MaterialStateProperty.all<Size>(const Size(100, 100)),
            ),
            onPressed: () => method(button),
            child: Text(
              button,
              style: TextStyle(
                fontSize: 24,
                color: funcButtons ? Colors.blue : Colors.white,
              ),
            ),
          );
  }
}
