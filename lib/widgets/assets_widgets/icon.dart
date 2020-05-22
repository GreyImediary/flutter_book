import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';
import 'package:flutter_book/widgets/widget_code_block.dart';

String iconCodeText = """
Icon(
  Icons.favorite,
  color: Colors.pink,
  size: 24.0,
  semanticLabel: 'Text to announce in accessibility modes',
)""";

Widget iconDescription(BuildContext context) {
  return Text(
      "A graphical icon widget drawn with a glyph from a font described in an IconData. Icons are not interactive. For an interactive icon, consider material's IconButton. This widget assumes that the rendered icon is squared. Non-squared icons may render incorrectly.");
}

Widget iconGoal(BuildContext context) {
  return Text(
      'Icons are used as additional information to application features.');
}

Widget iconCode(BuildContext context) {
  return Column(
    children: <Widget>[
      Text(
          "To implement icon you need provide icon property as IconData(There are preddefined icons in Icons class). You can also provide color property to change icon color, size, sematicLabel."),
      buildCodeExample(context, iconCodeText)
    ],
  );
}

Widget iconCodeExample(BuildContext context) {
  return Icon(
    Icons.favorite,
    color: Colors.pink,
    size: 24.0,
    semanticLabel: 'Text to announce in accessibility modes',
  );
}

class IconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
        heroTag: 'Icon',
        title: 'Icon',
        description: iconDescription(context),
        goal: iconGoal(context),
        code: iconCode(context),
        tricks: null,
        example: iconCodeExample(context));
  }
}
