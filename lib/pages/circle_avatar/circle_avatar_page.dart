import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
      ),
      body: Column(
        children: [
          // Container(
          //   width: 100,
          //   height: 100,
          //   child: CircleAvatar(
          //     backgroundColor: Colors.white,
          //     backgroundImage: NetworkImage(
          //         'https://i.pinimg.com/originals/90/58/3d/90583d6a4aaafaa6567539ec834f3696.png'),
          //   ),
          // ),
          ImageAvatar(
            imageUrl:
                'https://i.pinimg.com/originals/90/58/3d/90583d6a4aaafaa6567539ec834f3696.png',
            numeroDeNotificacoes: 5,
          ),
          SizedBox(
            height: 20,
            width: 20,
          ),
          ImageAvatar(
            imageUrl:
                'https://cdn.ome.lt/djG6N4ed2FGu10ovBcIjC5VYUkg=/1200x630/smart/extras/conteudos/capa-pikachu-ash-aposentadoria.jpg',
            numeroDeNotificacoes: 10,
          )
        ],
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  const ImageAvatar(
      {super.key, required this.imageUrl, required this.numeroDeNotificacoes});
  final String imageUrl;
  final int numeroDeNotificacoes;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.lightBlue,
          ),
        ),
        Container(
          width: 80,
          height: 80,
          padding: EdgeInsets.all(3),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(imageUrl),
          ),
        ),
        SizedBox(
          width: 80,
          height: 80,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 25,
              height: 25,
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: Colors.red[400],
                shape: BoxShape.circle,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "$numeroDeNotificacoes",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

//https://cdn.ome.lt/djG6N4ed2FGu10ovBcIjC5VYUkg=/1200x630/smart/extras/conteudos/capa-pikachu-ash-aposentadoria.jpg