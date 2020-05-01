import 'package:flutter/material.dart';
import 'package:flutter_book/screens/widget_screen.dart';
import 'package:flutter_book/widgets/widget_code_block.dart';

final imageCodeText = """
Image(
  image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
)""";

Widget imageDescription(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.bodyText2,
      children: [
        TextSpan(text: 'A widget that displays '),
        TextSpan(
            text: 'an image.', style: Theme.of(context).textTheme.bodyText1),
        TextSpan(text: 'The following '),
        TextSpan(
            text: 'image formats ',
            style: Theme.of(context).textTheme.bodyText1),
        TextSpan(
            text:
                'are supported: JPEG, PNG, GIF, Animated GIF, WebP, Animated WebP, BMP, and WBMP'),
        TextSpan(
            text:
                'To automatically perform pixel-density-aware asset resolution, specify the image using an '),
        TextSpan(
            text: 'AssetImage ', style: Theme.of(context).textTheme.bodyText1),
        TextSpan(text: 'and make sure that a '),
        TextSpan(
            text: 'MaterialApp', style: Theme.of(context).textTheme.bodyText1),
        TextSpan(text: ', '),
        TextSpan(
            text: 'WidgetsApp', style: Theme.of(context).textTheme.bodyText1),
        TextSpan(text: ', or '),
        TextSpan(
            text: 'MediaQuery ', style: Theme.of(context).textTheme.bodyText1),
        TextSpan(text: 'widget exists above the '),
        TextSpan(text: 'Image ', style: Theme.of(context).textTheme.bodyText1),
        TextSpan(text: 'widget in the widget tree.'),
      ],
    ),
  );
}

Widget imageGoal(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: Theme.of(context).textTheme.bodyText2,
      children: [
        TextSpan(text: 'Obviously, main goal is '),
        TextSpan(
            text: 'displaying an image ',
            style: Theme.of(context).textTheme.bodyText1),
        TextSpan(text: ':)'),
      ],
    ),
  );
}

Widget imageCode(BuildContext context) {
  return Column(
    children: <Widget>[
      RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText2,
          children: [
            TextSpan(text: 'All you need to do is implement '),
            TextSpan(
                text: 'Image', style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'to a parent widget and provide '),
            TextSpan(
                text: 'image', style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'property as '),
            TextSpan(
                text: 'NetworkImage',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: ', '),
            TextSpan(
                text: 'AssetImage',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: ', '),
            TextSpan(
                text: 'FileImage ',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: 'or '),
            TextSpan(
                text: 'MemoryImage',
                style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
      ),
      buildCodeExample(context, imageCodeText),
      RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText2,
          children: [
            TextSpan(text: 'Or you can just use '),
            TextSpan(
                text: 'Image.asset',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: ', '),
            TextSpan(
                text: 'Image.network',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: ', '),
            TextSpan(
                text: 'Image.file',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: ', '),
            TextSpan(
                text: 'Image.memory',
                style: Theme.of(context).textTheme.bodyText1),
            TextSpan(text: ', '),
            TextSpan(text: 'constructors'),
          ],
        ),
      )
    ],
  );
}

Widget imageExample() {
  return Stack(
    alignment: Alignment.center,
    children: <Widget>[

      Image.asset('assets/owl.jpg'),
    ],
  );
}

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetScreen(
      heroTag: 'Image',
      title: 'Image',
      description: imageDescription(context),
      goal: imageGoal(context),
      code: imageCode(context),
      tricks: null,
      example: imageExample(),
    );
  }
}
