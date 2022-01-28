import 'package:flutter/material.dart';

class Visor extends StatelessWidget {
  const Visor(this.contents, {Key? key}) : super(key: key);

  final String contents;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerRight,
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(10),
        width: 400,
        height: 120,
        color: Colors.white,
        child: Text(
          contents,
          style: const TextStyle(fontSize: 50),
        ));
  }
}
