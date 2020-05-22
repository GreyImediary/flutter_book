import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';
import 'package:flutter_book/widgets/widget_code_block.dart';

String chipCodeText = """
Chip(
  avatar: Icon(Icons.add),
  label: Text('Chip example'),
)""";

Widget chipDescription(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.bodyText2,
      children: [
        TextSpan(text: 'A material design chip.'),
        TextSpan(text: "Chips are "),
        TextSpan(
          text: 'compact elements that represent ',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        TextSpan(text: "an attribute, text, entity, or action."),
      ],
    ),
  );
}

Widget chipGoal(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.bodyText2,
      children: [
        TextSpan(text: 'A chip widget can be used to '),
        TextSpan(
          text: "filter some app's content ",
          style: Theme.of(context).textTheme.bodyText1,
        ),
        TextSpan(text: "or "),
        TextSpan(
          text: 'for selecting depending on some options',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    ),
  );
}

Widget chipCode(BuildContext context) {
  return Column(
    children: <Widget>[
      RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText2,
          children: [
            TextSpan(
                text:
                    'To impelent a chip you need to provide Chip widget to a parent and provide '),
            TextSpan(text: ""),
            TextSpan(
              text: "label property ",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TextSpan(
                text:
                    "as any widget you want(usually a text) that will represent "),
            TextSpan(
              text: 'a main chip information. ',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TextSpan(
                text:
                    "You can also provide an avatar property to display a prior widget to the chip's label"),
          ],
        ),
      ),
      buildCodeExample(context, chipCodeText)
    ],
  );
}

Widget chipExample(BuildContext context) {
  return Chip(
    avatar: Icon(Icons.add),
    label: Text('Chip example'),
  );
}

class ChipWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
        heroTag: 'Chip',
        title: 'Chip',
        description: chipDescription(context),
        goal: chipGoal(context),
        code: chipCode(context),
        tricks: null,
        example: chipExample(context));
  }
}
