import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';
import 'package:flutter_book/widgets/widget_code_block.dart';

String flutterLogoCodeText = """
FlutterLogo()""";

Widget flutterLogoDescription() {
  return Text(
      'The Flutter logo, in widget form. This widget respects the IconTheme.');
}

Widget flutterLogoGoal() {
  return Text('Used for representing flutter logo in your app');
}

Widget flutterLogoCode(BuildContext context) {
  return Column(
    children: <Widget>[
      Text("Just provide FlutterLogo to a parent widget"),
      buildCodeExample(context, flutterLogoCodeText)
    ],
  );
}

Widget flutterCodeExample() {
  return FlutterLogo();
}

class FlutterLogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
        heroTag: 'FlutterLogo',
        title: 'FlutterLogo',
        description: flutterLogoDescription(),
        goal: flutterLogoGoal(),
        code: flutterLogoCode(context),
        tricks: null,
        example: flutterLogoCode(context));
  }
}
