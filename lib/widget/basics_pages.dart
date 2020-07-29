import 'package:cookbook/model/widget_item.dart';
import 'package:cookbook/widget/basics/container_page.dart';
import 'package:flutter/material.dart';

import 'basics/appbar_page.dart';
import 'basics/column_page.dart';
import 'basics/icon_page.dart';
import 'basics/image_page.dart';

class BasicsPages extends StatelessWidget {
  final widgetList = [
    WidgetItem("Appbar", AppbarPage()),
    WidgetItem("Column", ColumnPage()),
    WidgetItem("Container", ContainerPage()),
    WidgetItem("FlutterLogo", AppbarPage()),
    WidgetItem("Icon", IconPage()),
    WidgetItem("Image", ImagePage()),
    WidgetItem("Placeholder", AppbarPage()),
    WidgetItem("RaisedButton", AppbarPage()),
    WidgetItem("Row", AppbarPage()),
    WidgetItem("Scaffold", AppbarPage()),
    WidgetItem("Text", AppbarPage())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basics"),
      ),
      body: _createBody(context),
    );
  }

  Widget _createBody(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 3,
      children: List.generate(widgetList.length, (index) {
        return Container(
          padding: const EdgeInsets.all(8),
          child: GestureDetector(
            child: Text(widgetList[index].title),
            onTap: () {
              print(widgetList[index].title);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => widgetList[index].widget));
            },
          ),
          color: Colors.teal[200],
        );
      }),
    );
  }
}
