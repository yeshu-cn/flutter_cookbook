
import 'package:flutter/material.dart';

import 'model/widget_item.dart';

class WidgetCatalog extends StatelessWidget {

	final widgetList = [
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
		return GridView.count(
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
		);
	}
}
