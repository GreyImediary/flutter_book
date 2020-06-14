import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';
import 'package:flutter_book/widgets/widget_code_block.dart';

String animSizeCodeText = """
  double size = 100;

  void _changeSize() {
    setState(() {
      if (size == 100) {
        size = 200;
      } else {
        size = 100;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedSize(
          duration: Duration(seconds: 2),
          vsync: this,
          child: Container(
            height: size,
            width: size,
            color: Colors.amber,
          ),
        ),
        Container(
          height: 16,
        ),
        RaisedButton(
          onPressed: _changeSize,
          child: Text('Change size'),
          color: Theme.of(context).accentColor,
          textColor: Theme.of(context).textTheme.bodyText2.color,
        )
      ],
    );
  }""";

Widget animatedSizeDesc() {
  return Text(
      "Animated widget that automatically transitions its size over a given duration whenever the given child's size changes.");
}

Widget animatedSizeGoal() {
  return Text(
      "AnimatedSize is needed in cases when you need change size your widget");
}

Widget animatedSizeCode(BuildContext context) {
  return Column(
    children: <Widget>[
      Text(
          'Wrap your widget with AnimatedSize widget. Then set duration and TickProvider. Set width and height for your widget and change it in setState function.'),
      buildCodeExample(context, animSizeCodeText)
    ],
  );
}

class AnimatedSizeExample extends StatefulWidget {
  @override
  _AnimatedSizeExampleState createState() => _AnimatedSizeExampleState();
}

class _AnimatedSizeExampleState extends State<AnimatedSizeExample>
    with SingleTickerProviderStateMixin {
  double size = 100;

  void _changeSize() {
    setState(() {
      if (size == 100) {
        size = 150;
      } else {
        size = 100;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedSize(
          duration: Duration(seconds: 2),
          vsync: this,
          child: Container(
            height: size,
            width: size,
            color: Colors.amber,
          ),
        ),
        Container(
          height: 16,
        ),
        RaisedButton(
          onPressed: _changeSize,
          child: Text('Change size'),
          color: Theme.of(context).accentColor,
          textColor: Theme.of(context).textTheme.bodyText2.color,
        )
      ],
    );
  }
}

class AnimSizeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
      heroTag: 'AnimatedSize',
      title: 'AnimatedSize',
      description: animatedSizeDesc(),
      goal: animatedSizeGoal(),
      code: animatedSizeCode(context),
      tricks: null,
      example: AnimatedSizeExample(),
    );
  }
}
