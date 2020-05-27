import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';
import 'package:flutter_book/widgets/widget_code_block.dart';

String cupButtonCodeText = """
CupertinoButton(
  child: Text(
    'Example Button'
  )
  onPressed: () {
    /*your code*/
  }
)""";

Widget cupButtonDescription() {
  return Text(
      'An iOS-style button. Takes in a text or an icon that fades out and in on touch. May optionally have a background.');
}

Widget cupButtonGoal() {
  return Text(
      "The main goal of cupertino button (as well as other buttons) is to on a user's click.");
}

Widget cupButtonCode(BuildContext context) {
  return Column(
    children: <Widget>[
      Text(
          'Provide CupertinoButton to a parent and specify child as any widget(usually Text or Icon) and onPressed as parameterless function.'),
      buildCodeExample(context, cupButtonCodeText)
    ],
  );
}

Widget cupButtonExample(BuildContext context) {
  return CupertinoButton(
    child: Text(
      'Example Button',
    ),
    color: Theme.of(context).accentColor,
    onPressed: () {},
  );
}

class CupButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
      heroTag: 'CupertinoButton',
      title: 'CupertinoButton',
      description: cupButtonDescription(),
      goal: cupButtonGoal(),
      code: cupButtonCode(context),
      tricks: null,
      example: cupButtonExample(context),
    );
  }
}
