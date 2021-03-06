import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';

import '../widget_code_block.dart';

final cupSwitchCodeText = """
Switch(
    value: stateValue,
    onChanged: (value) {
      /*your code*/
    }
)""";

final cupSwitchStateCodeText = """
Switch(
    value: stateValue,
    onChanged: (value) {
      setState(() {
        stateValue = value;
      });
    }
)""";

Widget cupSwitchDescription(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.bodyText2,
      children: [
        TextSpan(text: 'An iOS-style switch. '),
        TextSpan(text: 'The switch itself '),
        TextSpan(
          text: 'does not maintain any state. ',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        TextSpan(text: "Instead, when the state of the switch changes, "),
        TextSpan(
          text: 'the widget calls the onChanged callback. ',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        TextSpan(text: "If the onChanged callback is null, "),
        TextSpan(
          text: 'then the switch will be disabled. ',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        TextSpan(
            text:
            "(it will not respond to input). A disabled switch's thumb and track are rendered in shades of grey by default."),
      ],
    ),
  );
}

Widget cupSwitchButtonGoal(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.bodyText2,
      children: [
        TextSpan(text: "Used to toggle "),
        TextSpan(
            text: 'the on/off state of a single setting.',
            style: Theme.of(context).textTheme.bodyText1),
      ],
    ),
  );
}

Widget cupSwitchButtonCode(BuildContext context) {
  return Column(
    children: <Widget>[
      RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText2,
          children: [
            TextSpan(text: 'To implement switch you need to provide '),
            TextSpan(
                text: 'CupertinoSwitch widget ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'to a parent widget and provide '),
            TextSpan(
                text: 'value(boolean) and onChanged(function with boolean changed value) ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'properties.'),
          ],
        ),
      ),
      buildCodeExample(context, cupSwitchCodeText),
      RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText2,
          children: [
            TextSpan(
                text: 'Note: ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: "Make sure a parent widget is a Stateful widget "),
            TextSpan(text: "and you provide "),
            TextSpan(
                text: 'value property as boolean variable and it is changed under setState function.',
                style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
      ),
      buildCodeExample(context, cupSwitchStateCodeText),
    ],
  );
}

class CupSwitchExample extends StatefulWidget {
  @override
  _CupSwitchExampleState createState() => _CupSwitchExampleState();
}

class _CupSwitchExampleState extends State<CupSwitchExample> {
  String text = '';
  bool firstSwitchState = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(text),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                CupertinoSwitch(
                    value: firstSwitchState,
                    onChanged: (value) {
                      setState(() {
                        text = 'Value of switch is $value';
                        firstSwitchState = value;
                      });
                    }),
                Text('Common switch')
              ],
            ),
            Column(
              children: <Widget>[
                CupertinoSwitch(
                    value: false,
                    onChanged: null
                ),
                Text('Disabled switch')
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class CupSwitchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
        heroTag: 'CupertinoSwitch',
        title: 'CupertinoSwitch',
        description: cupSwitchDescription(context),
        goal: cupSwitchButtonGoal(context),
        code: cupSwitchButtonCode(context),
        tricks: null,
        example: CupSwitchExample());
  }
}