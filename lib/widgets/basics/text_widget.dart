import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';
import 'package:flutter_book/widgets/widget_code_block.dart';

String textCodeExample = """
Text('Example')""";

Widget textDescription() {
  return Text(
      "A run of text with a single style. The Text widget displays a string of text with single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints.");
}

Widget textGoal() {
  return Text("Text is needed to display information.");
}

Widget textCode(BuildContext context) {
  return Column(
    children: <Widget>[
      Text("Just provide Text widget with String parameter in constructor"),
      buildCodeExample(context, textCodeExample),
      Text(
          "You can also provide style property as TextStyle to change size, color, weight and other text style parameters. Overflow property can help you when your text widget overflows a parent widget."),
    ],
  );
}

Widget textExample() {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text("Just text"),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          "Styled text",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xff75abf1),
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          'Long text that should be overflowed by overflow parameter',
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.end,
        ),
      )
    ],
  );
}

class TextWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
      heroTag: 'Text',
      title: 'Text',
      description: textDescription(),
      goal: textGoal(),
      code: textCode(context),
      tricks: null,
      example: textExample(),
    );
  }
}
