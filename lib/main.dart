// Flutter code sample for AppBar

// This sample shows an [AppBar] with two simple actions. The first action
// opens a [SnackBar], while the second action navigates to a new page.

import 'package:flutter/material.dart';

import 'model/widget_item.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: WidgetList(),
    );
  }
}

class WidgetList extends StatelessWidget {
  var widgetList = [
    WidgetItem("Accessibility"),
    WidgetItem("Animation and Motion"),
    WidgetItem("Assets, Images, and Icons"),
    WidgetItem("Async"),
    WidgetItem("Basics"),
    WidgetItem("Cpertino(iOS-style-widgets)"),
    WidgetItem("Input"),
    WidgetItem("Interaction Models"),
    WidgetItem("Layout"),
    WidgetItem("Material Components"),
    WidgetItem("Painting and effects"),
    WidgetItem("Scrolling"),
    WidgetItem("Styling"),
    WidgetItem("Text")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget catalog"),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: List.generate(widgetList.length, (index) {
          return Container(
            padding: const EdgeInsets.all(8),
            child: Text(widgetList[index].title),
            color: Colors.teal[200],
          );
        }),
      ),
    );
  }
}
