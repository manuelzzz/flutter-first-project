import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LayoutBuilder page'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constrains) {
            return Column(
              children: [
                Container(
                  color: Colors.amber[100],
                  width: constrains.maxWidth * .5,
                  height: constrains.maxHeight * .5,
                ),
                Container(
                  color: Colors.blue[100],
                  width: constrains.maxWidth,
                  height: constrains.maxHeight * .5,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
