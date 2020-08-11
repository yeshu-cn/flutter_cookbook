
import 'package:cookbook/model/widget_item.dart';
import 'package:cookbook/widget/assets/assetbundle_page.dart';
import 'package:cookbook/widget/assets/rawimage_page.dart';
import 'package:flutter/material.dart';

import 'basics/icon_page.dart';
import 'basics/image_page.dart';

class AssetsImagesIconsPages extends StatelessWidget {

  final widgetList = [
    WidgetItem("AssetBundle", AssetBundlePage()),
    WidgetItem("Icon", IconPage()),
    WidgetItem("Image", ImagePage()),
    WidgetItem("RawImage", RawImagePage()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assets,Images,and Icons"),
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