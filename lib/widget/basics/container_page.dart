

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: 'demo1',),
              Tab(text: 'demo2',),
              Tab(text: 'markdown',)
            ],
          ),
          title: Text('Column'),
        ),
        body: TabBarView(
          children: [
            _createLeftTab(),
            _createRightTab(context),
            _createMarkdownTab()
          ],
        ),
      ),
    );
  }

  Widget _createLeftTab() {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        color: Colors.amber[600],
        width: 48.0,
        height: 48.0,
      ),
    );
  }

  Widget _createRightTab(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: Theme.of(context).textTheme.headline4.fontSize * 1.1 + 200.0,
      ),
      padding: const EdgeInsets.all(8.0),
      color: Colors.blue[600],
      alignment: Alignment.center,
      child: Text('Hello World',
          style: Theme.of(context)
              .textTheme
              .headline4
              .copyWith(color: Colors.white)),
      transform: Matrix4.rotationZ(0.1),
    );
  }

  Widget _createMarkdownTab() {
    return FutureBuilder(
      future: rootBundle.loadString("assets/hello.md"),
      builder:  (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          return Markdown(data: snapshot.data,
            styleSheet: MarkdownStyleSheet(
              h1: TextStyle(color: Colors.blue, fontSize: 40),
            ),
          styleSheetTheme: MarkdownStyleSheetBaseTheme.material,);
        }

        return Center(
          child: CircularProgressIndicator(),
        );
      });
  }
}