import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import 'resources/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppTitle,
      theme: ThemeData(
        primarySwatch: AppPrimaryColor,
      ),
      home: MyHomePage(title: HomePageTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: webURL,
      withJavascript: true,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(0), // So we don't have a app bar
          child: AppBar()
      ),
    );
  }
}
