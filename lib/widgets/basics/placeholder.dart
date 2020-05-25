import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';
import 'package:flutter_book/widgets/widget_code_block.dart';

String placeholderCodeText = """
Placeholder(
  fallbackHeight: 200,
  fallbackWidth: 200,
  strokeWidth: 3,
 )""";

Widget placeholderDescription() {
  return Text(
      'A widget that draws a box that represents where other widgets will one day be added.');
}

Widget placeholderGoal() {
  return Text(
      'This widget is useful during development to indicate that the interface is not yet complete.');
}

Widget placeholderCode(BuildContext context) {
  return Column(
    children: <Widget>[
      Text(
          'Provide Placeholder widget to a parent. You can specify color, fallbackWidth(400 default), fallbackHeight(400 default) and strokeWidth(2 default)'),
      buildCodeExample(context, placeholderCodeText)
    ],
  );
}

Widget placeholderExample() {
  return Placeholder(
    fallbackHeight: 200,
    fallbackWidth: 200,
    strokeWidth: 3,
    color: Colors.grey,
  );
}

class PlaceholderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
        heroTag: 'Placeholder',
        title: 'Placeholder',
        description: placeholderDescription(),
        goal: placeholderGoal(),
        code: placeholderCode(context),
        tricks: null,
        example: placeholderExample());
  }
}
