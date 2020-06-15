import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';
import 'package:flutter_book/widgets/widget_code_block.dart';

String fadeTransitionCodeText = """
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
      end: 1,
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
    return FadeTransition(
      opacity: _fadeAnimation,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: FlutterLogo(size: 150.0),
      ),
    );
  }
}""";

Widget fadeTransitionDesc() {
  return Text(
      'Animates the opacity of a widget. The main difference from AnimatedOpacity is that you need to control animation by yourself');
}

Widget fadeTransitionGoal() {
  return Text(
      'FadeTransition is needed in cases when you need to fade in/fade out your widget');
}

Widget fadeTransitionCode(BuildContext context) {
  return Column(
    children: <Widget>[
      Text(
          'To use fade transition you need to wrap your widget you want to animate with FadeTransition widget and set fade animation with controller.'),
      buildCodeExample(context, fadeTransitionCodeText),
    ],
  );
}

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
      end: 1,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: FlutterLogo(size: 150.0),
      ),
    );
  }
}

class FadeTransitionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
      heroTag: 'FadeTransition',
      title: 'FadeTransition',
      description: fadeTransitionDesc(),
      goal: fadeTransitionGoal(),
      code: fadeTransitionCode(context),
      tricks: null,
      example: FadeTransitionExample(),
    );
  }
}
