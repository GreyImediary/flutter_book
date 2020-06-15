import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';
import 'package:flutter_book/widgets/widget_code_block.dart';

String rotationTransitionCodeText = """
class FadeTransitionExample extends StatefulWidget {
  FadeTransitionExample({Key key}) : super(key: key);

  @override
  _FadeTransitionExampleState createState() => _FadeTransitionExampleState();
}

class _FadeTransitionExampleState extends State<FadeTransitionExample>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _fadeAnimation = Tween<double>(
      begin: 0,
      end: 360,
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
    return RotationTransition(
      turns: _fadeAnimation,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: FlutterLogo(size: 150.0),
      ),
    );
  }
}""";

Widget rotationTransitionDesc() {
  return Text('Animates the rotation of a widget.');
}

Widget rotationTransitionGoal() {
  return Text(
      'RotationTransition is needed in cases when you need to rotate your widget');
}

Widget rotationTransitionCode(BuildContext context) {
  return Column(
    children: <Widget>[
      Text(
          'To use rotation transition you need to wrap your widget you want to animate with RotationTransition widget and set rotation animation with controller.'),
      buildCodeExample(context, rotationTransitionCodeText),
    ],
  );
}

class RotationTransitionExample extends StatefulWidget {
  RotationTransitionExample({Key key}) : super(key: key);

  @override
  _RotationTransitionExampleState createState() =>
      _RotationTransitionExampleState();
}

class _RotationTransitionExampleState extends State<RotationTransitionExample>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true);
    _fadeAnimation = Tween<double>(
      begin: 0,
      end: 0.5,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _fadeAnimation,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: FlutterLogo(size: 150.0),
      ),
    );
  }
}

class RotationTransitionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
      heroTag: 'RotationTransition',
      title: 'RotationTransition',
      description: rotationTransitionDesc(),
      goal: rotationTransitionGoal(),
      code: rotationTransitionCode(context),
      tricks: null,
      example: RotationTransitionExample(),
    );
  }
}
