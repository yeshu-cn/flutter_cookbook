import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class RaisedButtonPage extends StatelessWidget {
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
          title: Text('RaisedButton'),
        ),
        body: TabBarView(
          children: [
            _createDemoTab(),
            _createCodeTab()
          ],
        ),
      ),
    );
  }

  Widget _createDemoTab() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const RaisedButton(
            onPressed: null,
            child: Text('Disabled Button', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {},
            child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {},
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child:
              const Text('Gradient Button', style: TextStyle(fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _createCodeTab() {
    return FutureBuilder(
        future: rootBundle.loadString("assets/raised_button.md"),
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
