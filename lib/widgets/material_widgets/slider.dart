import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';

import '../widget_code_block.dart';

final sliderCodeText = """
Slider(
    value: startValue,
    min: 0,
    max: 100,
    onChanged: (value) {
        /*your code*/
    }
)""";

final sliderStateCodeText = """
Slider(
    value: startValue,
    onChanged: (value) {
      setState(() {
        startValue = value;
      });
    }
)""";

Widget sliderDescription(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.bodyText2,
      children: [
        TextSpan(text: 'A Material Design slider that represents a widget '),
        TextSpan(text: "for "),
        TextSpan(
          text: 'selecting ',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        TextSpan(text: "values "),
        TextSpan(
          text: 'from a specified minimum to specified maximum',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    ),
  );
}

Widget sliderButtonGoal(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.bodyText2,
      children: [
        TextSpan(text: "Used to select "),
        TextSpan(
            text: 'from a range of values. ',
            style: Theme.of(context).textTheme.bodyText1),
        TextSpan(text: "A slider can be used to select from either "),
        TextSpan(
            text: 'a continuous or a discrete ',
            style: Theme.of(context).textTheme.bodyText1),
        TextSpan(text: "set of values."),
      ],
    ),
  );
}

Widget sliderButtonCode(BuildContext context) {
  return Column(
    children: <Widget>[
      RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText2,
          children: [
            TextSpan(text: 'To implement slider you need to provide '),
            TextSpan(
                text: 'Slider widget ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'to a parent widget and provide '),
            TextSpan(
                text: 'value as start slider value and onChanged as function with double argument(changed value).',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'Value must be '),
            TextSpan(
                text: 'between min and max values. ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'Otherwise, an exception will be thrown. '),
            TextSpan(text: 'To use discrete values, '),
            TextSpan(
                text: 'use a non-null integer value for divisions property, ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'which indicates the number of discrete intervals. '),
            TextSpan(text: 'You can also provide '),
            TextSpan(
                text: 'min(0.0 default)',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'and '),
            TextSpan(
                text: 'max(1.0 default) ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'properties to change a minimum and a maximum values'),
          ],
        ),
      ),
      buildCodeExample(context, sliderCodeText),
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
                text: 'value property as a double variable and it is changed under setState function.',
                style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
      ),
      buildCodeExample(context, sliderStateCodeText),
    ],
  );
}

class SliderExample extends StatefulWidget {
  @override
  _SliderExampleState createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _firstSliderValue = 0.0;
  double _secondSliderValue = 0.0;
  String text = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              child: Column(
                children: <Widget>[
                  Slider(
                    activeColor: Theme.of(context).accentColor,
                    value: _firstSliderValue,
                    onChanged: (value) {
                      setState(() {
                        _firstSliderValue = value;
                        text = 'Continuous slider value is ${value.floor()}';
                      });
                    },
                    min: 0,
                    max: 100,
                  ),
                  Text('Continuous  slider')
                ],
              ),
            ),
            Flexible(
              child: Column(
                children: <Widget>[
                  Slider(
                    activeColor: Theme.of(context).accentColor,
                    value: _secondSliderValue,
                    onChanged: (value) {
                      setState(() {
                        _secondSliderValue = value;
                        text = "Descrete slider value is $value";
                      });
                    },
                    min: 0,
                    max: 9,
                    divisions: 3,
                  ),
                  Text('Discrete slider')
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SliderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
      heroTag: 'Slider',
      title: 'Slider',
      description: sliderDescription(context),
      goal: sliderButtonGoal(context),
      code: sliderButtonCode(context),
      tricks: null,
      example: SliderExample(),
    );
  }
}
