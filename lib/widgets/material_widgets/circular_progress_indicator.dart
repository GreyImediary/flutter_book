import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';
import 'package:flutter_book/widgets/widget_code_block.dart';

String circCodeText = """
CircularProgressIndicator(),
CircularProgressIndicator(
  value: yourDoubleValue,
)""";

Widget circDescription(BuildContext context) {
  return Text(
      'A material design circular progress indicator, which spins to indicate that the application is busy.');
}

Widget circGoal(BuildContext context) {
  return Text(
      "CircularProgressIndicator is used to indicate that the application is busy and to show progress of app's task");
}

Widget circCode(BuildContext context) {
  return Column(
    children: <Widget>[
      Text(
          'To implement circular progress indicator you just need to provide CircularProgressIndicator widget to a parent. You can also provide a value property if you need determinate progress indicator.'),
      buildCodeExample(context, circCodeText)
    ],
  );
}

Widget circExample(BuildContext context) {
  return CircularProgressIndicator();
}

class CircularProgressIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
        heroTag: 'CircularProgressIndicator',
        title: 'CircularProgressIndicator',
        description: circDescription(context),
        goal: circGoal(context),
        code: circCode(context),
        tricks: null,
        example: circExample(context));
  }
}
