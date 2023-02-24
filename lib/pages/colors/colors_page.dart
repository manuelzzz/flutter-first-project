import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final cor = Colors.red;
    // final cor = Colors.red.withOpacity(0.5); transparência
    // final cor = Color.fromRGBO(5, 89, 156, 0.5);
    final cor = Color(0XFF05599c);
    // para definir uma cor em hexadecimal no flutter
    // é só acrescentar no construtor de Color 0XFF antes do código hex

    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
      ),
      body: Center(
        child: Container(
          width: 350,
          height: 350,
          color: cor,
        ),
      ),
    );
  }
}
