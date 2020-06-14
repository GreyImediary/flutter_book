import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';
import 'package:flutter_book/widgets/widget_code_block.dart';

String animOpacityCodeText = """
double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() {
      opacityLevel = opacityLevel == 0 ? 1.0 : 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedOpacity(
          opacity: opacityLevel,
          duration: Duration(seconds: 3),
          child: FlutterLogo(),
        ),
        RaisedButton(
          child: Text('Change opacity'),
          onPressed: _changeOpacity,
        ),
      ],
    );
  }""";

Widget animOpacityDesc() {
  return Text(
      "Animated version of Opacity which automatically transitions the child's opacity over a given duration whenever the given opacity changes.");
}

Widget animOpacityGoal() {
  return Text(
      'AnimatedOpacity is needed in cases when you need to fade in/fade out your widget');
}

Widget animOpacityCode(BuildContext context) {
  return Column(
    children: <Widget>[
      Text(
          'Wrap your widget you want to animate with AnimatedOpacity widget. Then set a duration of animation and provide opacity value that is changed in setState function'),
      buildCodeExample(context, animOpacityCodeText),
    ],
  );
}

class AnimOpacityExample extends StatefulWidget {
  @override
  _AnimOpacityExampleState createState() => _AnimOpacityExampleState();
}

class _AnimOpacityExampleState extends State<AnimOpacityExample> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() {
      opacityLevel = opacityLevel == 0 ? 1.0 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedOpacity(
          opacity: opacityLevel,
          duration: Duration(seconds: 2),
          child: Container(
            height: 100,
            width: 100,
            color: Colors.amber,
          ),
        ),
        Container(
          height: 16,
        ),
        RaisedButton(
          child: Text('Change opacity'),
          color: Theme.of(context).accentColor,
          textColor: Theme.of(context).textTheme.bodyText2.color,
          onPressed: _changeOpacity,
        ),
      ],
    );
  }
}

class AnimOpacityWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
      heroTag: 'AnimatedOpacity',
      title: 'AnimatedOpacity',
      description: animOpacityDesc(),
      goal: animOpacityGoal(),
      code: animOpacityCode(context),
      tricks: null,
      example: AnimOpacityExample(),
    );
  }
}
