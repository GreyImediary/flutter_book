import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';

final tooltipCodeText = """
Tooltip (
    message: 'Example',
    child: ExamleChild,
)""";

Widget tooltipDescription(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.bodyText2,
      children: [
        TextSpan(text: 'Tooltips provide '),
        TextSpan(
            text: 'text labels ', style: Theme.of(context).textTheme.bodyText1),
        TextSpan(
            text:
                'that help explain the function of a button or other user interface action. Wrap the button in a '),
        TextSpan(
            text: 'Tooltip widget ',
            style: Theme.of(context).textTheme.bodyText1),
        TextSpan(
            text:
                'to show a label when the widget long pressed(or when the user takes some other appropriate action)'),
      ],
    ),
  );
}

Widget tooltipGoal(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.bodyText2,
      children: [
        TextSpan(text: 'Tooltip is used for '),
        TextSpan(
            text: 'accessible displaying information ',
            style: Theme.of(context).textTheme.bodyText1),
        TextSpan(text: 'about buttons, '),
        TextSpan(
            text:
                'images, etc. It exports messages into semantic so screen reader will be able to vocalize it.'),
      ],
    ),
  );
}

Widget tooltipCode(BuildContext context) {
  return Column(
    children: <Widget>[
      RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText2,
          children: [
            TextSpan(
                text:
                    'To implement tooltip you just wrap your content with a '),
            TextSpan(
                text: 'Tooltip widget ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'and provide a '),
            TextSpan(
                text: 'message', style: Theme.of(context).textTheme.bodyText1),
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
            tooltipCodeText,
            textAlign: TextAlign.start,
          ),
        ),
      ),
      RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText2,
          children: [
            TextSpan(
                text: 'If you want customise your tooltip, you can provide '),
            TextSpan(
                text: 'height', style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: ', '),
            TextSpan(
                text: 'padding', style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: ', '),
            TextSpan(
                text: 'margin', style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: ', '),
            TextSpan(
                text: 'decoration',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: ', '),
            TextSpan(
                text: 'textStyle ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'and etc.'),
          ],
        ),
      )
    ],
  );
}

Widget tooltipExample(BuildContext context) {
  return Tooltip(
      message: 'Tooltip example',
      child: Material(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(16),
            child: Text(
              'Press long click',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
        ),
      ));
}

class TooltipWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
      heroTag: 'Tooltip',
      title: 'Tooltip',
      description: tooltipDescription(context),
      goal: tooltipGoal(context),
      code: tooltipCode(context),
      tricks: Container(),
      example: tooltipExample(context),
    );
  }
}
