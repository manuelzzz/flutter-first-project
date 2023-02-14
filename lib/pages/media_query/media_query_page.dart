import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    // final statusBarHeight = mediaQuery.padding.top;
    final screenHeight =
        mediaQuery.size.height - mediaQuery.padding.top - kToolbarHeight;

    // print('Largura: ${mediaQuery.size.width}');
    // print('Altura: ${mediaQuery.size.height}');
    // print('Orientacao: ${mediaQuery.orientation}');
    // print('Padding Top: ${mediaQuery.padding.top}');
    // print('Tamanho da appBar: ${kToolbarHeight}');
    // -> o tamanho da appBar, por padrão, é 56.0px
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery page'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.amber[100],
              width: mediaQuery.size.width * .5,
              height: screenHeight * .5,
            ),
            Container(
              color: Colors.blue[100],
              width: mediaQuery.size.width,
              height: screenHeight * .5,
            ),
          ],
        ),
      ),
    );
  }
}
