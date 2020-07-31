
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: 'demo',),
                Tab(text: 'code',)
              ],
            ),
            title: Text('Text'),
          ),
          body: TabBarView(
            children: [
              _createDemoTab(),
              _createCodeTab()
            ],
          ),
        ),
      ),
    );
  }

  Widget _createDemoTab() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text('Deliver features faster', textAlign: TextAlign.center),
        ),
        Expanded(
          child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
        ),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain, // otherwise the logo will be tiny
            child: const FlutterLogo(),
          ),
        ),
      ],
    );
  }

  Widget _createCodeTab() {
    return FutureBuilder(
        future: rootBundle.loadString("assets/text.md"),
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