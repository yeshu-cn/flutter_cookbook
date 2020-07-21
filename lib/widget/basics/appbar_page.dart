
import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));

void openPage(BuildContext context) {
	Navigator.push(context, MaterialPageRoute(
		builder: (BuildContext context) {
			return Scaffold(
				appBar: AppBar(
					title: const Text('Next page'),
				),
				body: const Center(
					child: Text(
						'This is the next page',
						style: TextStyle(fontSize: 24),
					),
				),
			);
		},
	));
}

/// This is the stateless widget that the main application instantiates.
class AppbarPage extends StatelessWidget {

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			key: scaffoldKey,
			appBar: AppBar(
				title: const Text('AppBar Demo'),
				actions: <Widget>[
					IconButton(
						icon: const Icon(Icons.add_alert),
						tooltip: 'Show Snackbar',
						onPressed: () {
							scaffoldKey.currentState.showSnackBar(snackBar);
						},
					),
					IconButton(
						icon: const Icon(Icons.navigate_next),
						tooltip: 'Next page',
						onPressed: () {
							openPage(context);
						},
					),
				],
			),
			body: const Center(
				child: Text(
					'This is the home page',
					style: TextStyle(fontSize: 24),
				),
			),
		);
	}
}