import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';
import 'package:flutter_book/widgets/widget_code_block.dart';

final iconButtonCodeText = """
IconButton(
  onPressed: () {
    /*some code*/
  },
  icon: Icon(Icons.add),
)""";

Widget iconButtonDescription(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.bodyText2,
      children: [
        TextSpan(text: 'An icon button is a '),
        TextSpan(
          text: 'is a picture printed on a Material widget ',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        TextSpan(text: "that reacts to touches by filling with color (ink)."),
      ],
    ),
  );
}

Widget iconButtonGoal(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.bodyText2,
      children: [
        TextSpan(text: "Icon buttons are commonly used "),
        TextSpan(
            text: 'in the AppBar.actions field, ',
            style: Theme.of(context).textTheme.bodyText1),
        TextSpan(text: " but they can be used in many other places as well."),
      ],
    ),
  );
}

Widget iconButtonCode(BuildContext context) {
  return Column(
    children: <Widget>[
      RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText2,
          children: [
            TextSpan(text: 'All you need to do is implement '),
            TextSpan(
                text: 'IconButton',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'to a parent widget and provide '),
            TextSpan(
                text: 'onPressed and icon ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'properties as '),
            TextSpan(
                text: 'void function and Icon widget.',
                style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
      ),
      buildCodeExample(context, iconButtonCodeText),
      RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText2,
          children: [
            TextSpan(text: 'IconButton have '),
            TextSpan(
                text: 'tooltip property ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: "so you don't need to wrap IconButton in "),
            TextSpan(
                text: 'Tooltip widget.',
                style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
      )
    ],
  );
}

Widget iconButtonExample(BuildContext context) {
  return IconButton(
    icon: Icon(Icons.add),
    onPressed: () {},
    tooltip: "Icon button",
    color: Theme.of(context).accentColor,
  );
}

class IconButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
      heroTag: "IconButton",
      title: "IconButton",
      description: iconButtonDescription(context),
      goal: iconButtonGoal(context),
      code: iconButtonCode(context),
      tricks: null,
      example: iconButtonExample(context),
    );
  }
}
