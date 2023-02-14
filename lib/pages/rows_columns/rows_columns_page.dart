import 'package:flutter/material.dart';

class RowsColumnsPage extends StatelessWidget {
  const RowsColumnsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows & columns'),
      ),
      body: Container(
        width: 410,
        color: Colors.white54,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // stretch: estica os elementos para irem até o fim do containers
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.black12,
              child: Text('Elemento um'),
            ),
            Text('Elemento dois'),
            Text('Elemento três'),
            Container(
              // o row já "estica" completamente a sua linha
              // portanto, tendo o stretch não se faz necessário
              color: Colors.amber[100],
              width: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('1'),
                  Text('2'),
                  Text('3'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
