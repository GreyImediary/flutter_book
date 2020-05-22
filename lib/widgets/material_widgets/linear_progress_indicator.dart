import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';
import 'package:flutter_book/widgets/widget_code_block.dart';

String linearCodeText = """
LinearProgressIndicator(),
LinearProgressIndicator(
  value: yourDoubleValue,
)""";

Widget linearDescription(BuildContext context) {
  return Text(
      'A material design linear progress indicator, that shows progress along a line to indicate that the application is busy.');
}

Widget linearGoal(BuildContext context) {
  return Text(
      "LinearProgressIndicator is used to indicate that the application is busy and to show progress of app's task");
}

Widget linearCode(BuildContext context) {
  return Column(
    children: <Widget>[
      Text(
          'To implement linear progress indicator you just need to provide LinearProgressIndicator widget to a parent. You can also provide a value property if you need determinate progress indicator.'),
      buildCodeExample(context, linearCodeText)
    ],
  );
}

Widget linearExample(BuildContext context) {
  return LinearProgressIndicator();
}

class LinearProgressIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
        heroTag: 'LinearProgressIndicator',
        title: 'LinearProgressIndicator',
        description: linearDescription(context),
        goal: linearGoal(context),
        code: linearCode(context),
        tricks: null,
        example: linearExample(context));
  }
}
