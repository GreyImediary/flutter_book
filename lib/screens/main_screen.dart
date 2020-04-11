import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/main_screen_widgets/widget_category.dart';

class MainScreen extends StatefulWidget {
  final categories = [
    Category('Accessibility', 'Make your app accessible.', '/accessibility', "accessibility"),
    Category('Animation and Motion', 'Bring animations to your app.', '/animmotion', "animmotion"),
    Category('Assets, Images, Icons', 'Manage assets, display images, and show icons.', '/aii', "aii"),
    Category('Async', 'Async patterns to your Flutter application.', '/async', "async"),
    Category('Basics', 'Basics elements needed in every app.', '/basics', "basics"),
    Category('Cupertino', 'Widgets for iOS design language.', '/cupertino', "cupertino"),
    Category('Input', 'Take user input in addition to input widgets.', '/input', "input"),
    Category('Interaction Models', 'Respond to touch events.', '/interaction', "interaction"),
    Category('Layout', 'Arrange other widgets columns, rows, grid and many other.', '/layout', "layout"),
    Category('Material Components', 'Widgets implementing the Material Design.', '/material', "material"),
    Category('Painting and effects', 'Apply visaul effect to widgets or create your own.', '/painting', "painting"),
    Category('Scrolling', 'Scroll multiple widgets as children of the parent.', '/scrolling', "scrolling."),
    Category('Styling', 'Manage the theme of your app.', '/styling', "styling"),
    Category('Text', 'Display and style text.', '/text', "text")
  ];
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              controller: _controller,
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    "Flutter Book",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                Container(
                  height: 30,
                ),
                GridView.count(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  controller: _controller,
                  crossAxisCount: 2,
                  children: widget.categories
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
