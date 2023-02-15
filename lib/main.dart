import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_project/pages/botoes_rotacao_texto/botoes_rotacao_texto_page.dart';
import 'package:flutter_first_project/pages/container/container_page.dart';
import 'package:flutter_first_project/pages/home/home_page.dart';
import 'package:flutter_first_project/pages/layout_builder/layout_builder_page.dart';
import 'package:flutter_first_project/pages/rows_columns/rows_columns_page.dart';
import 'package:flutter_first_project/pages/media_query/media_query_page.dart';
import 'package:flutter_first_project/pages/scrolls/listview_page.dart';
import 'package:flutter_first_project/pages/scrolls/singlechildscrollview_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (_) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (_) => HomePage(),
        '/container': (_) => ContainerPage(),
        '/rows_columns': (_) => RowsColumnsPage(),
        '/media_query': (_) => MediaQueryPage(),
        '/layout_builder': (_) => LayoutBuilderPage(),
        '/botoes_rotacao_texto': (_) => BotoesRotacaoTextoPage(),
        '/scrolls/single_child_scroll_view': (_) => SinglechildscrolviewPage(),
        '/scrolls/list_view': (_) => ListviewPage(),
      },
    );
  }
}
