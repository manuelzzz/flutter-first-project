import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final simpleSnackBar = SnackBar(
                  content: Text('Simple SnackBar'),
                );
                ScaffoldMessenger.of(context).showSnackBar(simpleSnackBar);
              },
              child: Text('Simple SnackBar'),
            ),
            ElevatedButton(
              onPressed: () {
                final actionSnackBar = SnackBar(
                  content: Text('SnackBar com action ->'),
                  backgroundColor: Colors.blueGrey.shade700,
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {},
                    textColor: Colors.white,
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(actionSnackBar);
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(actionSnackBar);
              },
              child: Text('Action SnackBar'),
            ),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).clearSnackBars();
              },
              child: Text('Clear snackBars'),
            ),
          ],
        ),
      ),
    );
  }
}
