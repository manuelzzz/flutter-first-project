import 'package:flutter/material.dart';

class StackPage2 extends StatefulWidget {
  const StackPage2({Key? key}) : super(key: key);

  @override
  State<StackPage2> createState() => _StackPage2State();
}

class _StackPage2State extends State<StackPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StackPage'),
      ),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://assets.stickpng.com/images/580b57fcd9996e24bc43c323.png'),
              ),
            ),
          ),
          Container(
            color: Colors.white24,
          ),
          Positioned(
            right: 10,
            left: 10,
            top: 20,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 50,
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    'Minum',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Minun is more concerned about cheering on its partners than its own safety. It shorts out the electricity in its body to create brilliant showers of sparks to cheer on its teammates.',
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
