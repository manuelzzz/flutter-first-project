import 'package:flutter/material.dart';

class MaterialBannerPage extends StatelessWidget {
  const MaterialBannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Banner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final firstMaterialBanner = MaterialBanner(
                  content: Text('MaterialBanner simples'),
                  backgroundColor: Colors.blueGrey.shade200,
                  actions: [
                    // tem que existir a action e ela não pode ser nula
                    TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .removeCurrentMaterialBanner();
                      },
                      child: Text('Fechar'),
                    )
                  ],
                );
                ScaffoldMessenger.of(context)
                    .showMaterialBanner(firstMaterialBanner);
              },
              child: Text('Simple MaterialBanner'),
            ),
            ElevatedButton(
              onPressed: () {
                final sumirMaterialBanner = MaterialBanner(
                  content: Text(
                    'MaterialBanner que some só',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.blueGrey.shade400,
                  actions: [
                    Text(''),
                  ],
                );
                ScaffoldMessenger.of(context)
                    .showMaterialBanner(sumirMaterialBanner);
                Future.delayed(Duration(seconds: 5), () {
                  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                });
              },
              child: Text('MaterialBanner que some sozinho'),
            ),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).clearMaterialBanners();
              },
              child: Text('Clear all materialBanners'),
            ),
          ],
        ),
      ),
    );
  }
}
