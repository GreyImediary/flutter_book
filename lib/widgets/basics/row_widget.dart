import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';
import 'package:flutter_book/widgets/widget_code_block.dart';

String rowCodeText = """
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
    /*your widgets*/
  ],
);
""";

Widget rowDescription() {
  return Text(
      'A widget that displays its children in a horizontal array. The Row widget does not scroll (and in general it is considered an error to have more children in a Row than will fit in the available room). If you have a line of widgets and want them to be able to scroll if there is insufficient room, consider using a ListView.');
}

Widget rowGoal() {
  return Text('The goal is to display other widgets in a horizontal array.');
}

Widget rowCode(BuildContext context) {
  return Column(
    children: <Widget>[
      Text(
          'Provide children property to a Row widget. You can also set main(horizontal) and cross(vertical) axis alignment, text direction'),
      buildCodeExample(context, rowCodeText)
    ],
  );
}

Widget rowCodeExample(BuildContext context) {
  return Column(
    children: <Widget>[
      Text('Row with centered main alignment'),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            color: Colors.amber,
          ),
          Container(
            height: 50,
            width: 50,
            color: Theme.of(context).accentColor,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.pinkAccent,
          )
        ],
      ),
      Container(
        height: 30,
      ),
      Text('Row with spaced evenly main alignment'),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            color: Colors.amber,
          ),
          Container(
            height: 50,
            width: 50,
            color: Theme.of(context).accentColor,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.pinkAccent,
          )
        ],
      ),
      Container(
        height: 30,
      ),
      Text('Row with spaced around main alignment'),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            color: Colors.amber,
          ),
          Container(
            height: 50,
            width: 50,
            color: Theme.of(context).accentColor,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.pinkAccent,
          )
        ],
      ),
      Container(
        height: 30,
      ),
      Text('Row with spaced between main alignment'),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            color: Colors.amber,
          ),
          Container(
            height: 50,
            width: 50,
            color: Theme.of(context).accentColor,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.pinkAccent,
          )
        ],
      ),
    ],
  );
}

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
        heroTag: 'Row',
        title: 'Row',
        description: rowDescription(),
        goal: rowGoal(),
        code: rowCode(context),
        tricks: null,
        example: rowCodeExample(context));
  }
}
