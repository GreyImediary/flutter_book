import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';

final flatButtonCodeText = """
FlatButton(
  onPressed: () {
    /*some code*/
  },
  child: Text("Flat Button"),
)""";

Widget flatButtonDescription(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.bodyText2,
      children: [
        TextSpan(text: 'A '),
        TextSpan(
            text: 'flat button ', style: Theme.of(context).textTheme.bodyText1),
        TextSpan(text: ' is a text label displayed on a (zero elevation) '),
        TextSpan(
            text: 'Material widget ',
            style: Theme.of(context).textTheme.bodyText1),
        TextSpan(text: 'that reacts to touches by '),
        TextSpan(
            text: 'filling with color.',
            style: Theme.of(context).textTheme.bodyText1),
      ],
    ),
  );
}

Widget flatButtonGoal(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.bodyText2,
      children: [
        TextSpan(text: "The main goal of flat button (as well as other buttons) is to "),
        TextSpan(
            text: 'trigger events ',
            style: Theme.of(context).textTheme.bodyText1),
        TextSpan(text: "on a user's click."),
        TextSpan(
            text:
                'Use flat buttons on toolbars, in dialogs, or inline with other content '),
        TextSpan(
            text: 'but offset from that content with padding ',
            style: Theme.of(context).textTheme.bodyText1),
        TextSpan(text: "so that the button's presence is obvious. "),
        TextSpan(
            text: 'You can use flat button where common raised button or outline button looks '),
        TextSpan(
            text: 'unnaturaly.', style: Theme.of(context).textTheme.bodyText1),
      ],
    ),
  );
}

Widget flatButtonCode(BuildContext context) {
  return Column(
    children: <Widget>[
      RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText2,
          children: [
            TextSpan(text: 'All you need to do is implement '),
            TextSpan(
                text: 'OutlineButton',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'to a parent widget and provide '),
            TextSpan(
                text: 'onPressed and child ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'properties as '),
            TextSpan(
                text: 'void function and widget. ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'Child can be any widget, but usually it is '),
            TextSpan(
                text: 'Text.', style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(16),
        child: Container(
          width: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColorLight,
              borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.all(16),
          child: Text(
            flatButtonCodeText,
            textAlign: TextAlign.start,
          ),
        ),
      ),
      RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText2,
          children: [
            TextSpan(text: 'You can also specify '),
            TextSpan(
                text: 'background color',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: '(color property), '),
            TextSpan(
                text: 'text color',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: ', '),
            TextSpan(
                text: 'disabled background and disabled text colors',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: ', '),
            TextSpan(
                text: 'splash color ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'and etc.'),
          ],
        ),
      )
    ],
  );
}

Widget flatButtonExample(BuildContext context) {
  return FlatButton(
    textColor: Color(0xffdddddd),
    onPressed: () {},
    child: Text("Flat Button"),
  );
}

class FlatButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
      heroTag: "FlatButton",
      title: "FlatButton",
      description: flatButtonDescription(context),
      goal: flatButtonGoal(context),
      code: flatButtonCode(context),
      tricks: null,
      example: flatButtonExample(context),
    );
  }
}
