import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.red[100],
          );
        },
        itemCount: 500,
        itemBuilder: (context, index) {
          // print('Carregando o indice ${index + 1}');
          return ListTile(
            title: Text('Squirtle numero: ${index + 1}'),
            subtitle: Text('Squirtle'),
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage('https://i.pinimg.com/originals/3d/76/31/3d763132c30ac83eb777293699bf60a7.png'),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
            ),
          );
        },
      ),
    );
  }
}
