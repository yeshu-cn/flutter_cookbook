
import 'package:cookbook/model/widget_item.dart';
import 'package:flutter/material.dart';

import 'basics/appbar_page.dart';
import 'basics/column_page.dart';

class MaterialComponentsPages extends StatelessWidget {
  final structureNavigationWidgetList = [
    WidgetItem("Appbar", AppbarPage()),
    WidgetItem("BottomNavigationBar", ColumnPage()),
    WidgetItem("Drawer", AppbarPage()),
    WidgetItem("MaterialApp", AppbarPage()),
    WidgetItem("Scaffold", AppbarPage()),
    WidgetItem("SliverAppBar", AppbarPage()),
    WidgetItem("TabBar", AppbarPage()),
    WidgetItem("TabBarView", AppbarPage()),
    WidgetItem("WidgetsApp", AppbarPage()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Material Components"),
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
      children: List.generate(structureNavigationWidgetList.length, (index) {
        return Container(
          padding: const EdgeInsets.all(8),
          child: GestureDetector(
            child: Text(structureNavigationWidgetList[index].title),
            onTap: () {
              print(structureNavigationWidgetList[index].title);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => structureNavigationWidgetList[index].widget));
            },
          ),
          color: Colors.teal[200],
        );
      }),
    );
  }

}