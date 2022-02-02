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
  bool totalized = false;

  void _buttomPressed(String key) {
    bool clearVisor = ButtomPressed.CLEAR_BUTTONS.contains(key);
    bool keyFunction = ButtomPressed.KEY_FUNCTION.contains(key);
    String displayed = clearVisor ? '' : visorDisplay;
    String keyPressed = '';

    if (keyFunction) {
      keyPressed = key;
    } else if (key == ButtomPressed.DEL) {
      displayed = displayed.substring(0, displayed.length - 1);
    } else if (!clearVisor) {
      if (totalized) {
        displayed = key;
      } else {
        displayed = displayed + key;
      }
    }

    setState(() {
      if (displayed != '') currentValue = double.parse(displayed);
      if (keyFunction) {
        if (keyFunctionPressed != '') {
          switch (keyFunctionPressed) {
            case ButtomPressed.PLUS:
              {
                result = result + currentValue;
                break;
              }
            case ButtomPressed.MINUS:
              {
                result = result - currentValue;
                break;
              }
            case ButtomPressed.MULT:
              {
                result = result * currentValue;
                break;
              }
            case ButtomPressed.DIV:
              {
                result = result / currentValue;
                break;
              }
            case ButtomPressed.PERC:
              {
                result = result / 100 * currentValue;
                break;
              }
            default:
          }
          displayed = result.toString();
          totalized = true;
        } else {
          result = currentValue;
        }
        keyFunctionPressed = keyPressed;
      } else if (key == ButtomPressed.CLEAR) {
        result = 0;
        currentValue = 0;
        keyFunctionPressed = '';
        totalized = false;
      } else if (key != ButtomPressed.DEL) {
        totalized = false;
      }
      visorDisplay = displayed;
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
