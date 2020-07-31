import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class ScaffoldPage extends StatefulWidget {
  ScaffoldPage({Key key}) : super(key: key);

  @override
  _ScaffoldPageState createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage> {
  int _count = 0;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
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
            title: Text('Scaffold'),
          ),
          body: TabBarView(
            children: [_createDemoTab(), _createCodeTab()],
          ),
        ),
      ),
    );
    ;
  }

  Widget _createDemoTab() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Center(child: Text('You have pressed the button $_count times.')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _createCodeTab() {
    return FutureBuilder(
        future: rootBundle.loadString("assets/scaffold.md"),
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
