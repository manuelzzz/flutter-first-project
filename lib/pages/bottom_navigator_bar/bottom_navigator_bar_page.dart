import 'package:flutter/material.dart';
import 'package:flutter_first_project/pages/bottom_navigator_bar/pagina_1.dart';
import 'package:flutter_first_project/pages/bottom_navigator_bar/pagina_2.dart';

class BottomNavigatorBarPage extends StatefulWidget {
  BottomNavigatorBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorBarPage> createState() => _BottomNavigatorBarPageState();
}

class _BottomNavigatorBarPageState extends State<BottomNavigatorBarPage> {
  int indice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigator Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedFontSize: 15,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black26,
        currentIndex: indice,
        onTap: (index) {
          setState(() {
            indice = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Página 1',
            icon: Icon(Icons.align_vertical_bottom_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Página 2',
            icon: Icon(Icons.align_horizontal_left_rounded),
          )
        ],
      ),
      body: IndexedStack(
        index: indice, // default: 0
        children: [
          Pagina1(),
          Pagina2(),
        ],
      ),
    );
  }
}
