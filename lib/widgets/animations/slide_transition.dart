import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';
import 'package:flutter_book/widgets/widget_code_block.dart';

String slideTransitionCodeString = """
class SlideTransitionExample extends StatefulWidget {
  SlideTransitionExample({Key key}) : super(key: key);

  @override
  _SlideTransitionExampleState createState() =>
      _SlideTransitionExampleState();
}

class _SlideTransitionExampleState extends State<SlideTransitionExample>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1.5, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticIn,
    ));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: FlutterLogo(size: 150.0),
      ),
    );
  }
}""";

Widget slideTransitionDesc() {
  return Text(
      "Animates the position of a widget relative to its normal position. The translation is expressed as an Offset scaled to the child's size. For example, an Offset with a dx of 0.25 will result in a horizontal translation of one quarter the width of the child.");
}

Widget slideTransitionGoal() {
  return Text(
      'SliderTransition is used when you need to animate with a slide animation.');
}

Widget slideTransitionCode(BuildContext context) {
  return Column(
    children: <Widget>[
      Text(
          "To use slide transition you need to wrap your widget you want to animate with SlideTransition widget and set position animation with controller."),
      buildCodeExample(context, slideTransitionCodeString)
    ],
  );
}

class SlideTransitionExample extends StatefulWidget {
  SlideTransitionExample({Key key}) : super(key: key);

  @override
  _SlideTransitionExampleState createState() =>
      _SlideTransitionExampleState();
}

class _SlideTransitionExampleState extends State<SlideTransitionExample>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1.5, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticIn,
    ));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: FlutterLogo(size: 150.0),
      ),
    );
  }
}

class SlideTransitionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
      heroTag: 'SliderTransition',
      title: 'SliderTransition',
      description: slideTransitionDesc(),
      goal: slideTransitionGoal(),
      code: slideTransitionCode(context),
      tricks: null,
      example: SlideTransitionExample(),
    );
  }
}
