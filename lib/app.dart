import 'package:flutter/material.dart';

import 'pages/home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My calculator in Flutter',
      home: HomePage(title: 'Calculadora'),
    );
  }
}
