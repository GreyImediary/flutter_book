import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';

import '../widget_code_block.dart';

final checkboxCodeText = """
Checkbox(
    value: stateValue,
    onChanged: (value) {
      /*your code*/
    }
)""";

final checkboxStateCodeText = """
Checkbox(
    value: stateValue,
    onChanged: (value) {
      setState(() {
        stateValue = value;
      });
    }
)""";

Widget checkboxDescription(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.bodyText2,
      children: [
        TextSpan(text: 'A material design checkbox. '),
        TextSpan(text: 'The checkbox itself '),
        TextSpan(
          text: 'does not maintain any state. ',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        TextSpan(text: "Instead, when the state of the checkbox changes, "),
        TextSpan(
          text: 'the widget calls the onChanged callback. ',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        TextSpan(text: "The checkbox can optionally display three values - "),
        TextSpan(
          text: 'true, false, and null - if tristate is true. ',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        TextSpan(
            text:
                "When value is null a dash is displayed. and the checkbox's value must be true or false."),
        TextSpan(
          text: 'By default tristate is false ',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        TextSpan(text: "and the checkbox's value must be true or false."),
      ],
    ),
  );
}

Widget checkboxButtonGoal(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.bodyText2,
      children: [
        TextSpan(text: "The main goal of the checkbox "),
        TextSpan(
            text: 'is allow users to change state ',
            style: Theme.of(context).textTheme.bodyText1),
        TextSpan(text: "of app's components."),
      ],
    ),
  );
}

Widget checkboxButtonCode(BuildContext context) {
  return Column(
    children: <Widget>[
      RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText2,
          children: [
            TextSpan(text: 'To implement checkbox you need to provide'),
            TextSpan(
                text: 'Checkbox widget ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'to a parent widget and provide '),
            TextSpan(
                text: 'value(boolean) and onChanged(function with boolean changed value) ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'properties.'),
          ],
        ),
      ),
      buildCodeExample(context, checkboxCodeText),
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
                text: 'value property as a boolean variable and it is changed under setState function.',
                style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
      ),
      buildCodeExample(context, checkboxStateCodeText),
    ],
  );
}

class CheckBoxExample extends StatefulWidget {
  @override
  _CheckBoxExampleState createState() => _CheckBoxExampleState();
}

class _CheckBoxExampleState extends State<CheckBoxExample> {
  String text = '';
  bool commonState = false;
  bool tristateState = null;

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
                  Checkbox(
                      value: commonState,
                      onChanged: (value) {
                        setState(() {
                          text = 'Value of common checkbox is $value';
                          commonState = value;
                        });
                      }),
                  Text('Common checkbox')
                ],
              ),
              Column(
                children: <Widget>[
                  Checkbox(
                    value: tristateState,
                    tristate: true,
                    onChanged: (value) {
                      setState(() {
                        text = 'Value of tristate checkbox is $value';
                        tristateState = value;
                      });
                    },
                  ),
                  Text('Tristate checkbox')
                ],
              ),
            ],
          ),
        ],
      );
  }
}

class CheckboxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
        heroTag: 'Checkbox',
        title: 'Checkbox',
        description: checkboxDescription(context),
        goal: checkboxButtonGoal(context),
        code: checkboxButtonCode(context),
        tricks: null,
        example: CheckBoxExample());
  }
}

