import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botoes e Rotaçao de texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.red,
                    child: Text('Testando RotatedBox'),
                  ),
                ),
              ],
            ),
            Container(
                height: 100,
                width: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.indigoAccent.shade100,
                      Colors.green.shade500
                    ],
                  ),
                  borderRadius: BorderRadius.circular(60),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.green.shade300,
                        offset: Offset(-5, 0.5))
                  ],
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(60),
                  onTap: () {
                    // print('Clicou no botão que é container');
                  },
                  child: Center(
                    child: Text(
                      'Botao degradê',
                      style: TextStyle(
                        color: Colors.white,
                        shadows: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.black,
                            offset: Offset(5, 1),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                foregroundColor: Colors.red,
                minimumSize: Size(20, 20),
              ),
              child: Text('Salvar'),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.archive_outlined),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.red,
                ),
                shadowColor: MaterialStateProperty.all(
                  Colors.indigo[900],
                ),
              ),
              child: Text('Salvar'),
            ),
            // SizedBox(height: 10),
            // espaçamento com sizedBox
            // dá para usar o Container(), porém,
            // o Container é muito mais complexo
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.archive),
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.blue,
                backgroundColor: Colors.black54,
                minimumSize: Size(100, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
              label: Text('Salvar'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Size(110, 50);
                  } else if (states.contains(MaterialState.hovered)) {
                    return Size(100, 45);
                  }
                  return Size(90, 40);
                }),
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.blue[900];
                    // quando pressionado, o azul fica mais escuro
                  } else if (states.contains(MaterialState.hovered)) {
                    return Colors.amber;
                  }
                  return Colors.blue;
                }),
              ),
              child: Text('Salvar'),
            ),
            InkWell(
              onTap: () {},
              child: Text('InkWell'),
            ),
            GestureDetector(
              // onTap: () => print('GestureDetector clicado'),
              // onVerticalDragStart: (_) => print('Gesture movimentado: $_'),
              // drag and drop
              // onVerticalDragEnd: (_) => print('Gesture finalizado $_'),
              child: Text('GestureDetector'),
            ),
          ],
        ),
      ),
    );
  }
}
