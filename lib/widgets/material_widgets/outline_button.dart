import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';

final outlineButtonCodeText = """
OutlineButton(
  onPressed: () {
    /*some code*/
  },
  child: Text("Flat Button"),
)""";

Widget outlineButtonDescription(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.bodyText2,
      children: [
        TextSpan(text: 'Similar to a FlatButton with a '),
        TextSpan(
          text: 'thin grey rounded rectangle border. ',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        TextSpan(text: "The outline button's border shape is defined by "),
        TextSpan(
          text: 'shape ',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        TextSpan(text: "and its appearance is defined by "),
        TextSpan(
          text: 'borderSide',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        TextSpan(text: ", "),
        TextSpan(
          text: 'disabledBorderColor',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        TextSpan(text: ", and "),
        TextSpan(
          text: 'highlightedBorderColor. ',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        TextSpan(text: "By default the border is "),
        TextSpan(
          text: 'a one pixel wide grey rounded rectangle ',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        TextSpan(text: "that does not change when the button is pressed or disabled. By default "),
        TextSpan(
          text: "the button's background is transparent.",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    ),
  );
}

Widget outlineButtonGoal(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.bodyText2,
      children: [
        TextSpan(text: "The main goal of flat button (as well as other buttons) is to "),
        TextSpan(
            text: 'trigger events ',
            style: Theme.of(context).textTheme.bodyText1),
        TextSpan(text: "on a user's click."),
      ],
    ),
  );
}

Widget outlineButtonCode(BuildContext context) {
  return Column(
    children: <Widget>[
      RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText2,
          children: [
            TextSpan(text: 'All you need to do is implement '),
            TextSpan(
                text: 'FlatButton',
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
            outlineButtonCodeText,
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
                text: 'disabled background and text colors',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: ', '),
            TextSpan(
                text: 'splash color',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: ', '),
            TextSpan(
                text: 'shape of border (shape parameter) ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'and etc. '),
            TextSpan(text: 'To customize border specify '),
            TextSpan(
              text: 'borderSide',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TextSpan(text: ", "),
            TextSpan(
              text: 'disabledBorderColor',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TextSpan(text: ", and "),
            TextSpan(
              text: 'highlightedBorderColor.',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      )
    ],
  );
}

Widget outlineButtonExample(BuildContext context) {
  return OutlineButton(
    highlightedBorderColor: Theme.of(context).accentColor,
    borderSide: BorderSide(color: Color(0xffdddddd)),
    textColor: Color(0xffdddddd),
    onPressed: () {},
    child: Text("Outline Button"),
  );
}

class OutlineButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
      heroTag: "OutlineButton",
      title: "OutlineButton",
      description: outlineButtonDescription(context),
      goal: outlineButtonGoal(context),
      code: outlineButtonCode(context),
      tricks: null,
      example: outlineButtonExample(context),
    );
  }
}
