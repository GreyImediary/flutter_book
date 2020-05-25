import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';

import '../widget_code_block.dart';

final raisedButtonCodeText = """
RaisedButton(
  onPressed: () {
    /*some code*/
  },
  child: Text("Raised Button"),
)""";

Widget raisedButtonDescription(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.bodyText2,
      children: [
        TextSpan(text: 'A '),
        TextSpan(
          text: 'material design  ',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        TextSpan(text: "button. "),
        TextSpan(
          text: 'A raised button is based on a ',
        ),
        TextSpan(
          text: 'Material widget ',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        TextSpan(text: "whose "),
        TextSpan(
          text: 'Material.elevation increases ',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        TextSpan(text: "when the button is pressed."),
      ],
    ),
  );
}

Widget raisedButtonGoal(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.bodyText2,
      children: [
        TextSpan(text: "The main goal of raised button (as well as other buttons) is to "),
        TextSpan(
            text: 'trigger events ',
            style: Theme.of(context).textTheme.bodyText1),
        TextSpan(text: "on a user's click. "),
        TextSpan(text: "Use raised buttons "),
        TextSpan(
            text: 'to add dimension to otherwise mostly flat layouts, ',
            style: Theme.of(context).textTheme.bodyText1),
        TextSpan(text: "e.g. in long busy lists of content, or in wide spaces. "),
        TextSpan(
            text: 'Avoid using raised buttons on already-raised content  ',
            style: Theme.of(context).textTheme.bodyText1),
        TextSpan(text: "such as dialogs or cards."),
      ],
    ),
  );
}

Widget raisedButtonCode(BuildContext context) {
  return Column(
    children: <Widget>[
      RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText2,
          children: [
            TextSpan(text: 'All you need to do is implement '),
            TextSpan(
                text: 'RaisedButton',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'to a parent widget and provide '),
            TextSpan(
                text: 'onPressed and icon ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'properties as '),
            TextSpan(
                text: 'void function and Icon widget. ',
                style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
      ),
      buildCodeExample(context, raisedButtonCodeText),
      RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText2,
          children: [
            TextSpan(text: 'If '),
            TextSpan(
                text: 'onPressed ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'and '),
            TextSpan(
                text: 'onLongPress ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'callbacks are null, then the button will be '),
            TextSpan(
                text: 'disabled and by default will resemble a flat button in the disabledColor. ',
                style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
      )
    ],
  );
}

Widget raisedButtonExample(BuildContext context) {
  return RaisedButton(
    color: Theme.of(context).accentColor,
    textColor: Theme.of(context).canvasColor,
    onPressed: () {},
    child: Text("Raised Button"),
  );
}

class RaisedButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
      heroTag: "RaiasedButton",
      title: "RaisedButton",
      description: raisedButtonDescription(context),
      goal: raisedButtonGoal(context),
      code: raisedButtonCode(context),
      tricks: null,
      example: raisedButtonExample(context),
    );
  }
}
