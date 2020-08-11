
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class RawImagePage extends StatelessWidget {
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
          title: Text('Image'),
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
        children: const <Widget>[
          Image(
            image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
          )
        ],
      ),
    );
  }

  Widget _createCodeTab() {
    return FutureBuilder(
        future: rootBundle.loadString("assets/image.md"),
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