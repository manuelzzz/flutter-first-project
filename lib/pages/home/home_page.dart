import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rowsColumns,
  mediaQuery,
  layoutBuilder,
  botoesRotacaoTexto,
  singleChildScrollView,
  listView,
  dialogs,
  snackBar,
  forms,
  cidades,
  stack,
  stack2,
  bottomNavigatorBar,
  circleAvatar,
  colors,
  materialBanner,
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final materialColorTransparent = MaterialStateColor.resolveWith((states) {
    return Colors.black.withOpacity(0.014);
  });

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
                case PopupMenuPages.botoesRotacaoTexto:
                  Navigator.of(context).pushNamed('/botoes_rotacao_texto');
                  break;
                case PopupMenuPages.singleChildScrollView:
                  Navigator.of(context)
                      .pushNamed('/scrolls/single_child_scroll_view');
                  break;
                case PopupMenuPages.listView:
                  Navigator.of(context).pushNamed('/scrolls/list_view');
                  break;
                case PopupMenuPages.dialogs:
                  Navigator.of(context).pushNamed('/dialogs');
                  break;
                case PopupMenuPages.snackBar:
                  Navigator.of(context).pushNamed('/snack_bar');
                  break;
                case PopupMenuPages.forms:
                  Navigator.of(context).pushNamed('/forms');
                  break;
                case PopupMenuPages.cidades:
                  Navigator.of(context).pushNamed('/cidades');
                  break;
                case PopupMenuPages.stack:
                  Navigator.of(context).pushNamed('/stack');
                  break;
                case PopupMenuPages.stack2:
                  Navigator.of(context).pushNamed('/stack2');
                  break;
                case PopupMenuPages.bottomNavigatorBar:
                  Navigator.of(context).pushNamed('/bottomNavigatorBar');
                  break;
                case PopupMenuPages.circleAvatar:
                  Navigator.of(context).pushNamed('/circleAvatar');
                  break;
                case PopupMenuPages.colors:
                  Navigator.of(context).pushNamed('/colors');
                  break;
                case PopupMenuPages.materialBanner:
                  Navigator.of(context).pushNamed('/materialBanner');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.container,
                  child: Text('Container'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.rowsColumns,
                  child: Text('Rows & Columns'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.mediaQuery,
                  child: Text('Media Query'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.layoutBuilder,
                  child: Text('Layout Builder'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.botoesRotacaoTexto,
                  child: Text('Botoes e rotaçao de texto'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.singleChildScrollView,
                  child: Text('Single child Scroll view'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.listView,
                  child: Text('List view'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.dialogs,
                  child: Text('Dialogs'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.snackBar,
                  child: Text('Snack Bar'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.forms,
                  child: Text('Forms'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.cidades,
                  child: Text('Cidades'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack,
                  child: Text('Stack'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack2,
                  child: Text('Segunda Stack'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.bottomNavigatorBar,
                  child: Text('Bottom Navigator Bar'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.circleAvatar,
                  child: Text('Circle avatar'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.colors,
                  child: Text('Colors'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.materialBanner,
                  child: Text('Material Banner'),
                ),
              ];
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              padding: EdgeInsets.fromLTRB(70, 70, 70, 70),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.lightBlue.shade200,
                      blurRadius: 100,
                      offset: Offset(10, 10),
                    )
                  ]),
              child: ElevatedButton(
                style: ButtonStyle(
                  iconColor: MaterialStateColor.resolveWith((states) {
                    return Colors.black;
                  }),
                  backgroundColor: materialColorTransparent,
                  overlayColor: materialColorTransparent,
                  shadowColor: materialColorTransparent,
                ),
                onPressed: () {},
                child: Icon(Icons.ads_click_rounded),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
