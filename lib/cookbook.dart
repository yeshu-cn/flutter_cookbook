import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';


List _elements = [
  {'name': 'Animate a page route transition', 'group': 'Animation'},
  {'name': 'Animate a widget using a physics simulation', 'group': 'Animation'},
  {'name': 'Animate the properties of a container', 'group': 'Animation'},
  {'name': 'Fade a widget in and out', 'group': 'Animation'},
  {'group': 'Design', 'name': 'Add a Drawer to a screen'},
  {'group': 'Design', 'name': 'Display a snackbar'},
  {'group': 'Design', 'name': 'Export fonts from a package'},
  {'group': 'Design', 'name': 'Update the UI based on orientation'},
  {'group': 'Design', 'name': 'Use a Custom font'},
  {'group': 'Design', 'name': 'Use themes to share colors and font styles'},
  {'group': 'Design', 'name': 'Work with tabs'},
  {'group': 'Forms', 'name': 'Build a form with validation'},
  {'group': 'Design', 'name': 'Create and style a text field'},
  {'group': 'Design', 'name': 'Focus and text field'},
  {'group': 'Design', 'name': 'Handle changes to a text field'},
  {'group': 'Design', 'name': 'Retrieve th value of a text field'},
  {'group': 'Gestures', 'name': 'Add Material touch ripples'},
  {'group': 'Gestures', 'name': 'Handle taps'},
  {'group': 'Gestures', 'name': 'Implement swipe to dismiss'},
  {'group': 'Image', 'name': 'Display Images from the internet'},
  {'group': 'Image', 'name': 'Fade in image with a placeholder'},
  {'group': 'Image', 'name': 'Work with cached images'},
  {'group': 'List', 'name': 'Create a grid list'},
  {'group': 'List', 'name': 'Create a horizontal list'},
  {'group': 'List', 'name': 'Create lists with different types of items'},
  {'group': 'List', 'name': 'Place a floating app bar above a list'},
  {'group': 'List', 'name': 'Use lists'},
  {'group': 'List', 'name': 'Work with long lists'},
  {'group': 'Maintenance', 'name': 'report errors to a service'},
  {'group': 'Navigation', 'name': 'Animate a widget across screens'},
  {'group': 'Navigation', 'name': 'Navigate a new screen and back'},
  {'group': 'Navigation', 'name': 'Navigate with named routes'},
  {'group': 'Navigation', 'name': 'Pass arguments to a named route'},
  {'group': 'Navigation', 'name': 'Return data from a screen'},
  {'group': 'Navigation', 'name': 'Send data to a new screen'},
  {'group': 'Networking', 'name': 'Delete data on the internet'},
  {'group': 'Navigation', 'name': 'Fetch data from the internet'},
  {'group': 'Navigation', 'name': 'Make authenticated requests'},
  {'group': 'Navigation', 'name': 'Parse JSON in the background'},
  {'group': 'Navigation', 'name': 'Send data to the internet'},
  {'group': 'Navigation', 'name': 'Update data over the internet'},
  {'group': 'Navigation', 'name': 'Work with WebSockets'},
  {'group': 'Persistence', 'name': 'Persist data with SQLite'},
  {'group': 'Persistence', 'name': 'Read and write files'},
  {'group': 'Persistence', 'name': 'Store key-value data on disk'},
  {'group': 'Plugins', 'name': 'Play and pause a video'},
  {'group': 'Plugins', 'name': 'Take a picture with the camera'},
  {'group': 'Testing Integration', 'name': 'An introduction to integration '
      'testing'},
  {'group': 'Testing Integration', 'name': 'Handle scrolling'},
  {'group': 'Testing Integration', 'name': 'Performance profiling'},
  {'group': 'Testing Unit', 'name': 'An introduction to unit testing'},
  {'group': 'Testing Unit', 'name': 'Mock dependencies using Mockito'},
  {'group': 'Testing Widget', 'name': 'An introduction to widget testing'},
  {'group': 'Testing Widget', 'name': 'Find widgets'},
  {'group': 'Testing Widget', 'name': 'Tap, drag, and enter text'},

];



class Cookbook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GroupedListView<dynamic, String>(
      groupBy: (element) => element['group'],
      elements: _elements,
      useStickyGroupSeparators: true,
      groupSeparatorBuilder: (String value) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          value,
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      itemBuilder: (c, element) {
        return ListTile(
            contentPadding:
            EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            title: Text(element['name'])
        );
      },
    );
  }
}
