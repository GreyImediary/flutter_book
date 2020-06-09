import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';
import 'package:flutter_book/widgets/widget_code_block.dart';

String cupCircCodeText = """
CupertinoActivityIndicator(),
CupertinoActivityIndicator(
  radius: yourDoubleValue,
)""";

Widget cupIndicatorDesc() {
  return Text('An iOS-style activity indicator that spins clockwise.');
}

Widget cupIndicatorGoal() {
  return Text(
      "CupertinoActivityIndicator is used to indicate that the application is busy and to show progress of app's task");
}

Widget cupIndicatorCode(BuildContext context) {
  return Column(
    children: <Widget>[
      Text(
        'To implement cupertino indicator you just need to provide CupertinoActivityIndicator widget to a parent. You can also provide a radius property if you need a specific positive non-null radius(default is 10) for indicator.',
      ),
      buildCodeExample(context, cupCircCodeText)
    ],
  );
}

Widget cupIndicatorExample() {
  return Column(
    children: <Widget>[
      Text('Standard cupertino indicator'),
      CupertinoActivityIndicator(),
      Container(
        height: 30,
      ),
      Text('Cupertino indicator with radius = 15'),
      CupertinoActivityIndicator(
        radius: 15,
      )
    ],
  );
}

class CupertinoIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
      heroTag: 'CupertinoActivityIndicator',
      title: 'CupertinoActivityIndicator',
      description: cupIndicatorDesc(),
      goal: cupIndicatorGoal(),
      code: cupIndicatorCode(context),
      tricks: null,
      example: cupIndicatorExample(),
    );
  }
}
