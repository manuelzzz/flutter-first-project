import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rowsColumns,
  mediaQuery,
  layoutBuilder
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            tooltip: 'Selecione o item',
            padding: EdgeInsets.all(5),
            iconSize: 25,
            icon: Icon(Icons.arrow_drop_down),
            onSelected: (PopupMenuPages valueSelected) {
              switch (valueSelected) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
                  break;
                case PopupMenuPages.rowsColumns:
                  Navigator.of(context).pushNamed('/rows_columns');
                  break;
                case PopupMenuPages.mediaQuery:
                  Navigator.of(context).pushNamed('/media_query');
                  break;
                case PopupMenuPages.layoutBuilder:
                  Navigator.of(context).pushNamed('/layout_builder');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                PopupMenuItem(
                  value: PopupMenuPages.container,
                  child: Text('Container'),
                ),
                PopupMenuItem(
                  value: PopupMenuPages.rowsColumns,
                  child: Text('Rows & Columns'),
                ),
                PopupMenuItem(
                  value: PopupMenuPages.mediaQuery,
                  child: Text('Media Query'),
                ),
                PopupMenuItem(
                  value: PopupMenuPages.layoutBuilder,
                  child: Text('Layout Builder'),
                )
              ];
            },
          )
        ],
      ),
      body: Container(),
    );
  }
}
