import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';
import 'package:flutter_book/widgets/widget_code_block.dart';

String radioCodeText = """
Radio(
    value: yourValue,
    groupValue: _currentValue,
    onChanged: (YourValue value) {
      setState(() {
        _currentValue = value;
      });
    },
)""";

Widget radioDescription(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.bodyText2,
      children: [
        TextSpan(
            text: 'A material design radio button that represents a widget '),
        TextSpan(text: "for "),
        TextSpan(
          text: 'selecting a',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        TextSpan(text: "value "),
        TextSpan(
          text: 'from a group of value to change some state of your app',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    ),
  );
}

Widget radioGoal(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.bodyText2,
      children: [
        TextSpan(text: "Used to select "),
        TextSpan(text: "between a number "),
        TextSpan(
            text: 'of mutually exclusive values.',
            style: Theme.of(context).textTheme.bodyText1),
        TextSpan(
            text:
                "When one radio button in a group the other radio buttons in the group cease to be selected. "),
        TextSpan(
            text: 'is selected, ',
            style: Theme.of(context).textTheme.bodyText1),
        TextSpan(text: "the other radio buttons in the group "),
        TextSpan(
            text: 'cease to be selected.',
            style: Theme.of(context).textTheme.bodyText1),
      ],
    ),
  );
}

Widget radioCode(BuildContext context) {
  return Column(
    children: <Widget>[
      RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText2,
          children: [
            TextSpan(text: 'To implement radio you need to provide'),
            TextSpan(
                text: 'Radio widget ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'to a parent widget and provide '),
            TextSpan(
                text: 'a value property ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(
                text: 'as any value(e.g. enum object or boolean) you need, '),
            TextSpan(
                text: 'a groupValue property ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(
                text:
                    'as changeable value that have the same type as value and '),
            TextSpan(
                text: 'an onChanged function.',
                style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
      ),
      buildCodeExample(context, radioCodeText),
      RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText2,
          children: [
            TextSpan(
                text: 'Note: ', style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'The groupValue propery is your'),
            TextSpan(
                text: 'currently selected.',
                style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
      ),
    ],
  );
}

class RadioExample extends StatefulWidget {
  @override
  _RadioExampleState createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  String text = '';
  String currentValue = 'first';

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
                Radio(
                    value: 'first',
                    groupValue: currentValue,
                    onChanged: (String value) {
                      setState(() {
                        currentValue = value;
                        text = "Current value is '$value'";
                      });
                    }),
                Text('First radio')
              ],
            ),
            Column(
              children: <Widget>[
                Radio(
                    value: 'second',
                    groupValue: currentValue,
                    onChanged: (String value) {
                      setState(() {
                        currentValue = 'second';
                        text = "Current value is '$value'";
                      });
                    }),
                Text('Second radio')
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class RadioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
      heroTag: 'Radio',
      title: 'Radio',
      description: radioDescription(context),
      goal: radioGoal(context),
      code: radioCode(context),
      tricks: null,
      example: RadioExample(),
    );
  }
}
