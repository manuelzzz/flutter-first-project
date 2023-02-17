import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Container(
        margin: EdgeInsets.all(50),
        width: 300,
        height: 300,
        child: Stack(
          children: [
            Container(
              // fica por baixo (é o primeiro, fica por trás)
              color: Colors.blue.shade300,
            ),
            Positioned(
              top: 90,
              left: 60,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.red.shade400,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                  // fica por cima (é o último, fica na frente)
                  width: 60,
                  height: 60,
                  color: Colors.green.shade300),
            ),
          ],
        ),
      ),
    );
  }
}
