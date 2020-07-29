import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class PlaceHolderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'demo',
              ),
              Tab(
                text: 'code',
              )
            ],
          ),
          title: Text('Placeholder'),
        ),
        body: TabBarView(
          children: [_createDemoTab(), _createCodeTab()],
        ),
      ),
    );
  }

  Widget _createDemoTab() {
    return Center(
        child: Placeholder(
      color: Colors.blue,
      strokeWidth: 4.0,
    ));
  }

  Widget _createCodeTab() {
    return FutureBuilder(
        future: rootBundle.loadString("assets/placeholder.md"),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            return Markdown(
              data: snapshot.data,
              styleSheet: MarkdownStyleSheet(
                h1: TextStyle(color: Colors.blue, fontSize: 40),
              ),
              styleSheetTheme: MarkdownStyleSheetBaseTheme.material,
            );
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
