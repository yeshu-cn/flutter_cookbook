
import 'package:cookbook/widget/accessibility_pages.dart';
import 'package:cookbook/widget/anim_motion_pages.dart';
import 'package:cookbook/widget/assets_image_icon_pages.dart';
import 'package:cookbook/widget/async_pages.dart';
import 'package:cookbook/widget/basics_pages.dart';
import 'package:cookbook/widget/cupertino_pages.dart';
import 'package:cookbook/widget/input_pages.dart';
import 'package:cookbook/widget/interaction_models_pages.dart';
import 'package:cookbook/widget/layout_pages.dart';
import 'package:cookbook/widget/material_components_pages.dart';
import 'package:cookbook/widget/painting_effects_pages.dart';
import 'package:cookbook/widget/scrolling_pages.dart';
import 'package:cookbook/widget/styling_pages.dart';
import 'package:cookbook/widget/text_pages.dart';
import 'package:flutter/material.dart';

import 'model/widget_item.dart';

class WidgetCatalog extends StatelessWidget {

	final widgetList = [
		WidgetItem("Accessibility", AccessibilityPages()),
		WidgetItem("Animation and Motion", AnimMotionPages()),
		WidgetItem("Assets, Images, and Icons", AssetsImagesIconsPages()),
		WidgetItem("Async", AsyncPages()),
		WidgetItem("Basics", BasicsPages()),
		WidgetItem("Cupertino(iOS-style-widgets)", CupertinoPages()),
		WidgetItem("Input", InputPages()),
		WidgetItem("Interaction Models", InteractionModelsPages()),
		WidgetItem("Layout", LayoutPages()),
		WidgetItem("Material Components", MaterialComponentsPages()),
		WidgetItem("Painting and effects", PaintingEffectsPages()),
		WidgetItem("Scrolling", ScrollingPages()),
		WidgetItem("Styling", StylingPages()),
		WidgetItem("Text", TextPages())
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
					child: GestureDetector(
						child: Text(widgetList[index].title),
						onTap: () {
							print(widgetList[index].title);
							Navigator.push(context, MaterialPageRoute(builder: (context) =>
									widgetList[index].widget));
						},
					),
					color: Colors.teal[200],
				);
			}),
		);
	}
}
