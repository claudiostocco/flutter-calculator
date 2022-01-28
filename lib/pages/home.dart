import 'package:calculator/consts/consts.dart';
import 'package:calculator/widgets/KeyPad.dart';
import 'package:calculator/widgets/Visor.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double result = 0;
  double currentValue = 0;
  String visorDisplay = '';
  String keyFunctionPressed = '';

  void _buttomPressed(String key) {
    bool clearVisor = ButtomPressed.CLEAR_BUTTONS.contains(key);
    bool keyFunction = ButtomPressed.KEY_FUNCTION.contains(key);
    String displayed = clearVisor ? '' : visorDisplay;
    String keyPressed = '';
    double tempResult = result;

    if (keyFunction) {
      keyPressed = key;
    } else {
      displayed = displayed + key;
    }

    switch (key) {
      case ButtomPressed.PLUS:
        {
          break;
        }
      case ButtomPressed.MINUS:
        {
          break;
        }
      default:
        {}
    }

    setState(() {
      visorDisplay = displayed;
      if (displayed != '') currentValue = double.parse(displayed);
      if (keyFunction) {
        keyFunctionPressed = keyPressed;
      }
      result = tempResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Visor(visorDisplay),
            KeyPad(_buttomPressed),
          ],
        ),
      ),
    );
  }
}
