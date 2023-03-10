import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_project/pages/botoes_rotacao_texto/botoes_rotacao_texto_page.dart';
import 'package:flutter_first_project/pages/cidades/cidades_page.dart';
import 'package:flutter_first_project/pages/circle_avatar/circle_avatar_page.dart';
import 'package:flutter_first_project/pages/colors/colors_page.dart';
import 'package:flutter_first_project/pages/container/container_page.dart';
import 'package:flutter_first_project/pages/dialogs/dialogs_page.dart';
import 'package:flutter_first_project/pages/bottom_navigator_bar/bottom_navigator_bar_page.dart';
import 'package:flutter_first_project/pages/forms/forms_page.dart';
import 'package:flutter_first_project/pages/home/home_page.dart';
import 'package:flutter_first_project/pages/layout_builder/layout_builder_page.dart';
import 'package:flutter_first_project/pages/material_banner/material_banner_page.dart';
import 'package:flutter_first_project/pages/rows_columns/rows_columns_page.dart';
import 'package:flutter_first_project/pages/media_query/media_query_page.dart';
import 'package:flutter_first_project/pages/scrolls/listview_page.dart';
import 'package:flutter_first_project/pages/scrolls/singlechildscrollview_page.dart';
import 'package:flutter_first_project/pages/snack_bar/snack_bar_page.dart';
import 'package:flutter_first_project/pages/stack/stack_page.dart';
import 'package:flutter_first_project/pages/stack/stack_page2.dart';

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
      theme: ThemeData(
        // primaryColor: Colors.indigo[100],
        primarySwatch: Colors.indigo,
        primaryColorLight: Colors.indigo[200],
        primaryColorDark: Colors.black54,
        fontFamily: 'Roboto',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey.shade700,
          ),
        ),
      ),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/': (_) => HomePage(),
        '/container': (_) => ContainerPage(),
        '/rows_columns': (_) => RowsColumnsPage(),
        '/media_query': (_) => MediaQueryPage(),
        '/layout_builder': (_) => LayoutBuilderPage(),
        '/botoes_rotacao_texto': (_) => BotoesRotacaoTextoPage(),
        '/scrolls/single_child_scroll_view': (_) => SinglechildscrolviewPage(),
        '/scrolls/list_view': (_) => ListviewPage(),
        '/dialogs': (_) => DialogsPage(),
        '/snack_bar': (_) => SnackBarPage(),
        '/forms': (_) => FormsPage(),
        '/cidades': (_) => CidadesPage(),
        '/stack': (_) => StackPage(),
        '/stack2': (_) => StackPage2(),
        '/bottomNavigatorBar': (_) => BottomNavigatorBarPage(),
        '/circleAvatar': (_) => CircleAvatarPage(),
        '/colors': (_) => ColorsPage(),
        '/materialBanner': (_) => MaterialBannerPage(),
      },
    );
  }
}
